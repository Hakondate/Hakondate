import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/nutrients/nutrients_model.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    required int id,
    required String name,     // ニックネーム
    required int schoolId,    // 学校ID
    required int schoolYear,  // 学年
    NutrientsModel? slns,     // 学校給食摂取基準
  }) = _UserModel;
}
