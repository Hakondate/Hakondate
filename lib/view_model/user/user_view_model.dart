import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/model/school/users_school_model.dart';

import 'package:hakondate_v2/provider/user/user_state.dart';
import 'package:hakondate_v2/model/user/user_model.dart';
import 'package:hakondate_v2/model/school/school_model.dart';

final userProvider = StateNotifierProvider<UserViewModel, UserState>((ref) => UserViewModel());

class UserViewModel extends StateNotifier<UserState> {
  UserViewModel() : super(UserState(user: UserModel()));

  Future<void> updateUser({String? name, UsersSchoolModel? school}) async {
    UserModel _user = state.user;
    UserModel _newUser = UserModel(
      name: name ?? _user.name,
      school: school ?? _user.school
    );
    await _writeUser(_newUser);
    state = state.copyWith(user: _newUser);
  }

  Future<void> getUser() async {
    UserModel _user = UserModel();
    // TODO: ローカルファイルからユーザ情報を読み込みuserに格納
    state = state.copyWith(user: _user);
  }

  Future<void> _writeUser(UserModel user) async {
    // TODO: ローカルファイルにユーザ情報を書き込む
  }
}