import 'package:json_annotation/json_annotation.dart';

import 'package:hakondate_v2/model/school/school_model.dart';

part 'users_school_model.g.dart';

@JsonSerializable()
class UsersSchoolModel extends SchoolModel {
  UsersSchoolModel({
    required String name,
    required int lunchBlock,
    int? classification,
    this.schoolYear
  }) : super(
    name: name,
    lunchBlock: lunchBlock,
    classification: classification
  );

  factory UsersSchoolModel.fromJson(Map<String, dynamic> json) =>
      _$UsersSchoolModelFromJson(json);
  Map<String, dynamic> toJson() => _$UsersSchoolModelToJson(this);

  final int? schoolYear;  // 学年(年齢)

  /* 登録情報から学年区別を返す
  * 小学1.2年 => "lower"
  * 小学3.4年 => "middle"
  * 小学5.6年 => "upper"
  * 中学生    => "junior"
  * データ不備 => "junior" */
  String schoolGrade() {
    if (classification == null || schoolYear == null) return "junior";
    else if (classification == 1) {
      if (schoolYear! <= 2) return "lower";
      else if (schoolYear! <= 4) return "middle";
      else if (schoolYear! <= 6) return "upper";
    } else if (classification == 2) return "junior";

    return "junior";
  }
}