import 'package:json_annotation/json_annotation.dart';

import 'package:hakondate_v2/model/school/users_school_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  UserModel({
    this.name,
    this.school
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  final String? name;             // ニックネーム
  final UsersSchoolModel? school; // 学校
}