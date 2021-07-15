import 'package:json_annotation/json_annotation.dart';

import 'package:hakondate_v2/model/school/school_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  UserModel({
    required this.name,
    required this.school,
    required this.schoolYear
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  final String name;        // ニックネーム
  final SchoolModel school; // 学校
  final int schoolYear;     // 学年(年齢)
}