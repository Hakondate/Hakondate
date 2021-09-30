import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/model/school/school_model.dart';

import 'package:hakondate_v2/state//user/user_state.dart';
import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';
import 'package:hakondate_v2/model/user/user_model.dart';
import 'package:hakondate_v2/repository/local/school_local_repository.dart';
import 'package:hakondate_v2/repository/local/users_local_repository.dart';

final userProvider = StateNotifierProvider<UserViewModel, UserState>((ref) => UserViewModel());

class UserViewModel extends StateNotifier<UserState> {
  UserViewModel()
      : this._usersLocalRepository = UsersLocalRepository(),
        this._schoolLocalRepository = SchoolLocalRepository(),
        super(UserState());

  final UsersLocalRepository _usersLocalRepository;
  final SchoolLocalRepository _schoolLocalRepository;

  Future<bool> getUser() async {
    try {
      final List<UserModel> _users = await _usersLocalRepository.getAllUser();

      if (_users.isEmpty) return false;

      state = state.copyWith(users: _users);
      _setCurrentUser(_users.first.id);

      return true;
    } catch (error) {
      debugPrint('Failed to load user data.');
      debugPrint(error.toString());

      return false;
    }
  }

  Future<void> _setCurrentUser(int id) async {
    final UserModel _user = await _usersLocalRepository.getUserById(id);
    final NutrientsModel _slns = await _getSLNS(_user.schoolId);
    final SchoolModel _school = await _schoolLocalRepository.getSchoolById(_user.schoolId);

    state = state.copyWith(
      currentUser: _user.copyWith(slns: _slns),
      school: _school,
    );
  }

  Future<void> updateUser({String? name, int? schoolId, int? schoolYear}) async {
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
    await _usersLocalRepository.updateUser(_newUser);

    List<UserModel> _newUsers = await _usersLocalRepository.getAllUser();
    SchoolModel _newSchool = await _schoolLocalRepository.getSchoolById(_newUser.schoolId);

    state = state.copyWith(
      users: _newUsers,
      currentUser: _newUser,
      school: _newSchool,
    );
  }

  Future<NutrientsModel> _getSLNS(int userId, {int? schoolId, int? schoolYear}) async {
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
  Future<String> _getSchoolGrade(int userId, {int? schoolId, int? schoolYear}) async {
    final UserModel _user = await _usersLocalRepository.getUserById(userId);
    final SchoolModel _school = await _schoolLocalRepository.getSchoolById(schoolId ?? _user.schoolId);
    if (_school.classification == 1) {
      int _schoolYear = schoolYear ?? _user.schoolYear;
      if (_schoolYear <= 2) return "lower";
      else if (_schoolYear <= 4) return "middle";
      else if (_schoolYear <= 6) return "upper";
    }

    return "junior";
  }

  Future<int> createUser(String name, int schoolId, int schoolYear) =>
      _usersLocalRepository.addUser(name, schoolId, schoolYear);
}
