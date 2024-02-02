import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/nutrients/nutrients_model.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,

    /// ニックネーム
    required String name,

    /// 学校ID
    required int schoolId,

    /// 学年
    required int schoolYear,

    /// 学校給食摂取基準
    NutrientsModel? slns,
  }) = _UserModel;
  const UserModel._();
}
