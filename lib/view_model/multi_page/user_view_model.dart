import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate_v2/model/school/school_model.dart';
import 'package:hakondate_v2/state/user/user_state.dart';
import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';
import 'package:hakondate_v2/model/user/user_model.dart';
import 'package:hakondate_v2/repository/local/schools_local_repository.dart';
import 'package:hakondate_v2/repository/local/users_local_repository.dart';

final userProvider =
    StateNotifierProvider<UserViewModel, UserState>((ref) => UserViewModel());

class UserViewModel extends StateNotifier<UserState> {
  UserViewModel()
      : _usersLocalRepository = UsersLocalRepository(),
        _schoolsLocalRepository = SchoolsLocalRepository(),
        super(const UserState());

  final UsersLocalRepository _usersLocalRepository;
  final SchoolsLocalRepository _schoolsLocalRepository;

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
    final NutrientsModel _slns = await _getSLNS(_user.schoolId);

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

  Future<NutrientsModel> _getSLNS(int userId,
      {int? schoolId, int? schoolYear}) async {
    final String _schoolGrade = await _getSchoolGrade(
      userId,
      schoolId: schoolId,
      schoolYear: schoolYear,
    );
    final String _pathSLNS = 'assets/slns/$_schoolGrade.json';
    final String _jsonSLNS = await rootBundle.loadString(_pathSLNS);
    final Map<String, dynamic> _decodeSLNS = json.decode(_jsonSLNS);

    return NutrientsModel.fromJson(_decodeSLNS);
  }

  /* 登録情報から学年区別を返す
  * 小学1.2年 => "lower"
  * 小学3.4年 => "middle"
  * 小学5.6年 => "upper"
  * 中学生    => "junior"
  * データ不備 => "junior" */
  Future<String> _getSchoolGrade(int userId,
      {int? schoolId, int? schoolYear}) async {
    final UserModel _user = await _usersLocalRepository.getById(userId);
    final SchoolModel _school =
        await _schoolsLocalRepository.getById(schoolId ?? _user.schoolId);
    if (_school.classification == 1) {
      int _schoolYear = schoolYear ?? _user.schoolYear;
      if (_schoolYear <= 2) {
        return 'lower';
      } else if (_schoolYear <= 4) {
        return 'middle';
      } else if (_schoolYear <= 6) {
        return 'upper';
      }
    }

    return 'junior';
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
