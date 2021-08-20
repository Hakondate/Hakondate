import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate_v2/model/school/users_school_model.dart';
import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    String? name,               // ニックネーム
    UsersSchoolModel? school,   // 学校
    NutrientsModel? slns,       // 学校給食摂取基準
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}