import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';

import 'package:hakondate_v2/provider/user/user_state.dart';
import 'package:hakondate_v2/model/user/user_model.dart';
import 'package:hakondate_v2/model/school/users_school_model.dart';

final userProvider = StateNotifierProvider<UserViewModel, UserState>((ref) => UserViewModel());

class UserViewModel extends StateNotifier<UserState> {
  UserViewModel() : super(UserState(user: UserModel()));

  Future<void> updateUser({String? name, UsersSchoolModel? school}) async {
    UserModel _user = state.user;
    NutrientsModel? _slns = school == null ? _user.slns : await _getSLNS(school);
    UserModel _newUser = UserModel(
      name: name ?? _user.name,
      school: school ?? _user.school,
      slns: _slns
    );
    await _writeUser(_newUser);
    state = state.copyWith(user: _newUser);
  }

  Future<void> getUser() async {
    UserModel _user = UserModel();
    // TODO: ローカルファイルからユーザ情報を読み込みuserに格納
    state = state.copyWith(user: _user);
  }

  Future<NutrientsModel> _getSLNS(UsersSchoolModel? school) async {
    NutrientsModel _slns = NutrientsModel();
    if (school == null) {
      return _slns;
    }

    final String _pathSLNS = 'assets/slns/${school.schoolGrade()}.json';
    final String _jsonSLNS = await rootBundle.loadString(_pathSLNS);
    final Map<String, dynamic> _decodeSLNS = json.decode(_jsonSLNS);

    _slns = NutrientsModel.fromJson(_decodeSLNS);
    return _slns;
  }

  Future<void> _writeUser(UserModel user) async {
    // TODO: ローカルファイルにユーザ情報を書き込む
  }
}