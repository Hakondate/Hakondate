import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';

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

  factory UserModel.fromDrift(UsersSchema schema) => UserModel(
        id: schema.id,
        name: schema.name,
        schoolId: schema.schoolId,
        schoolYear: schema.schoolYear,
      );

  UsersTableCompanion toDrift() => UsersTableCompanion(
        id: Value<int>(id),
        name: Value<String>(name),
        schoolId: Value<int>(schoolId),
        schoolYear: Value<int>(schoolYear),
      );
}
