import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';
import 'package:hakondate_v2/provider/user/user_state.dart';
import 'package:hakondate_v2/model/user/user_model.dart';
import 'package:hakondate_v2/model/school/users_school_model.dart';

final userProvider = StateNotifierProvider<UserViewModel, UserState>((ref) => UserViewModel());

class UserViewModel extends StateNotifier<UserState> {
  UserViewModel() : super(UserState());

  Future<void> getUser() async {
    try {
      final File _userFile = await _getUserFile();
      final String _content = await _userFile.readAsString();
      UserModel _user = UserModel.fromJson(json.decode(_content));
      state = state.copyWith(user: _user);
    } catch (error) {
      debugPrint('Either the user has not registered, or access to the user file has failed.');
      debugPrint(error.toString());
    }
  }

  bool isExistUser() => state.user.name != null && state.user.school != null;

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
    try {
      final File _userFile = await _getUserFile();
      final String _encoded = json.encode(user.toJson());
      _userFile.writeAsString(_encoded.toString());
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<File> _getUserFile() async {
    final Directory _directory = await getApplicationDocumentsDirectory();
    final File _file = File(p.join(_directory.path, 'user.json'));
    return _file;
  }
}