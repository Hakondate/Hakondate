import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/schools_local_repository.dart';
import 'package:hakondate/repository/local/users_local_repository.dart';
import 'package:hakondate/state/user/user_state.dart';

final userProvider = StateNotifierProvider<UserViewModel, UserState>((ref) {
  final UsersLocalRepository usersLocalRepository = ref.read(usersLocalRepositoryProvider);
  final SchoolsLocalRepository schoolsLocalRepository = ref.read(schoolsLocalRepositoryProvider);
  return UserViewModel(schoolsLocalRepository, usersLocalRepository);
});

class UserViewModel extends StateNotifier<UserState> {
  UserViewModel(this._schoolsLocalRepository, this._usersLocalRepository)
      : super(const UserState());

  final SchoolsLocalRepository _schoolsLocalRepository;
  final UsersLocalRepository _usersLocalRepository;

  Future<bool> checkSignedUp() async {
    try {
      if (await _usersLocalRepository.count() == 0) return false;
      final SharedPreferences _prefs = await SharedPreferences.getInstance();
      final int _currentUserId = _prefs.getInt('current_user_id') ?? 1;
      await _setCurrentUser(_currentUserId);

      return true;
    } catch (error) {
      debugPrint('Failed to load user data.');
      debugPrint(error.toString());

      return false;
    }
  }

  Future<bool> changeCurrentUser(int id) async {
    try {
      await _setCurrentUser(id);
      final SharedPreferences _prefs = await SharedPreferences.getInstance();

      return await _prefs.setInt('current_user_id', id);
    } catch (error) {
      debugPrint('Failed to change current user.');
      debugPrint(error.toString());

      return false;
    }
  }

  Future<void> _setCurrentUser(int id) async {
    final UserModel _user = await _usersLocalRepository.getById(id);
    final NutrientsModel _slns = await _getSLNS(_user.id);

    state = state.copyWith(
      currentUser: _user.copyWith(slns: _slns),
    );
  }

  Future<void> updateCurrentUser(
      {String? name, int? schoolId, int? schoolYear}) async {
    if (state.currentUser == null) return;
    NutrientsModel? _slns = (schoolId != null || schoolYear != null)
        ? await _getSLNS(state.currentUser!.id)
        : state.currentUser!.slns;
    UserModel _newUser = state.currentUser!.copyWith(
      name: name ?? state.currentUser!.name,
      schoolId: schoolId ?? state.currentUser!.schoolId,
      schoolYear: schoolYear ?? state.currentUser!.schoolYear,
      slns: _slns,
    );
    await _usersLocalRepository.update(_newUser);

    state = state.copyWith(currentUser: _newUser);
  }

  Future<NutrientsModel> _getSLNS(int userId) async {
    final SchoolGrade _schoolGrade = await _getSchoolGrade(userId);
    final String _jsonSLNS = await rootBundle.loadString(_schoolGrade.slnsPath);
    final Map<String, dynamic> _decodeSLNS = json.decode(_jsonSLNS);

    return NutrientsModel.fromJson(_decodeSLNS);
  }

  Future<SchoolGrade> _getSchoolGrade(int userId) async {
    final UserModel _user = await _usersLocalRepository.getById(userId);
    final SchoolModel _school = await _schoolsLocalRepository.getById(_user.schoolId);
    if (_school.classification != SchoolClassification.secondary) {
      if (_user.schoolYear <= 2) {
        return SchoolGrade.lower;
      } else if (_user.schoolYear <= 4) {
        return SchoolGrade.middle;
      } else if (_user.schoolYear <= 6) {
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
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setInt('current_user_id', id);
    await _setCurrentUser(id);

    return id;
  }
}
