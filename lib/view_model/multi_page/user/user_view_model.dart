import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:hakondate/repository/local/sqlite/users/users_local_repository.dart';
import 'package:hakondate/state/user/user_state.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';
import 'package:hakondate/util/exception/shared_preferences_exception.dart';
import 'package:hakondate/util/exception/sign_in_exception.dart';

part 'user_view_model.g.dart';

@Riverpod(keepAlive: true)
class UserViewModel extends _$UserViewModel {
  late final UsersLocalRepositoryAPI _usersLocalRepository;
  late final SchoolsLocalRepositoryAPI _schoolsLocalRepository;
  
  @override
  UserState build() {
    _usersLocalRepository = ref.watch(usersLocalRepositoryProvider);
    _schoolsLocalRepository = ref.watch(schoolsLocalRepositoryProvider);
    
    return const UserState();
  }

  Future<bool> signIn() async {
    if (await _usersLocalRepository.count() == 0) return false;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int? currentUserId = prefs.getInt(AppKey.sharedPreferencesKey.currentUserId);

    if (currentUserId == null) {
      throw SharedPreferencesException('Failed to get ${AppKey.sharedPreferencesKey.currentUserId} value');
    }

    await changeCurrentUser(currentUserId, isSetPrefs: false);

    return true;
  }

  Future<void> changeCurrentUser(int id, {bool isSetPrefs = true}) async {
    final UserModel user = await _usersLocalRepository.getById(id);
    final NutrientsModel slns = await _getSLNS(user.id);

    if (isSetPrefs) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt(AppKey.sharedPreferencesKey.currentUserId, id);
    }

    state = state.copyWith(
      currentUser: user.copyWith(slns: slns),
    );
  }

  Future<void> updateCurrentUser({
    String? name,
    int? schoolId,
    int? schoolYear,
  }) async {
    if (state.currentUser == null) return;
    final NutrientsModel? slns = (schoolId != null || schoolYear != null)
        ? await _getSLNS(state.currentUser!.id)
        : state.currentUser!.slns;
    final UserModel newUser = state.currentUser!.copyWith(
      name: name ?? state.currentUser!.name,
      schoolId: schoolId ?? state.currentUser!.schoolId,
      schoolYear: schoolYear ?? state.currentUser!.schoolYear,
      slns: slns,
    );
    await _usersLocalRepository.update(newUser);

    state = state.copyWith(currentUser: newUser);
  }

  Future<NutrientsModel> _getSLNS(int userId) async {
    final SchoolGrade schoolGrade = await getSchoolGrade(userId);
    final String jsonSLNS = await rootBundle.loadString(schoolGrade.slnsJsonPath);
    final Map<String, dynamic> decodeSLNS = json.decode(jsonSLNS) as Map<String, dynamic>;

    return NutrientsModel.fromJson(decodeSLNS);
  }

  Future<SchoolGrade> getSchoolGrade(int userId) async {
    final UserModel user = await _usersLocalRepository.getById(userId);
    final SchoolModel school = await _schoolsLocalRepository.getById(user.schoolId);
    if (school.classification != SchoolClassification.secondary) {
      if (user.schoolYear <= 2) {
        return SchoolGrade.lower;
      } else if (user.schoolYear <= 4) {
        return SchoolGrade.middle;
      } else if (user.schoolYear <= 6) {
        return SchoolGrade.upper;
      }
    }

    return SchoolGrade.junior;
  }

  Future<int> createUser({
    required String name,
    required int schoolId,
    required int schoolYear,
  }) async {
    final int id = await _usersLocalRepository.add(name, schoolId, schoolYear);
    await changeCurrentUser(id);
    await ref.read(analyticsControllerProvider.notifier).logSignup();

    return id;
  }

  Future<int> getParentId() async {
    final UserModel? user = state.currentUser;
    if (user == null) throw const SignInException('Current user does not exist');
    final SchoolModel school = await _schoolsLocalRepository.getById(user.schoolId);

    return school.parentId;
  }

  void signOut() => state = state.copyWith(currentUser: null);
}
