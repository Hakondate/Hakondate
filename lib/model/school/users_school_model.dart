import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_school_model.freezed.dart';
part 'users_school_model.g.dart';

@freezed
class UsersSchoolModel with _$UsersSchoolModel {
  const UsersSchoolModel._();
  const factory UsersSchoolModel({
    required int id,
    required int parentId,
    required String name,
    int? lunchBlock,
    @Default(0) int classification,
    int? schoolYear               // 学年(年齢)
  }) = _UsersSchoolModel;

  factory UsersSchoolModel.fromJson(Map<String, dynamic> json) =>
      _$UsersSchoolModelFromJson(json);

  /* 登録情報から学年区別を返す
  * 小学1.2年 => "lower"
  * 小学3.4年 => "middle"
  * 小学5.6年 => "upper"
  * 中学生    => "junior"
  * データ不備 => "junior" */
  String schoolGrade() {
    if (schoolYear == null) return "junior";
    else if (classification == 1) {
      if (schoolYear! <= 2) return "lower";
      else if (schoolYear! <= 4) return "middle";
      else if (schoolYear! <= 6) return "upper";
    } else if (classification == 2) return "junior";

    return "junior";
  }
}