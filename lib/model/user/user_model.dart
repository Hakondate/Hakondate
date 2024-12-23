import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,

    /// 姓
    required String lastName,

    /// 名
    required String firstName,

    /// 学校ID
    required int schoolId,

    /// 学年
    required int schoolYear,

    /// 学校給食摂取基準
    NutrientsModel? slns,

    /// 認可された日
    DateTime? authorizedAt,
  }) = _UserModel;
  const UserModel._();

  factory UserModel.fromDrift(UsersSchema schema) => UserModel(
        id: schema.id,
        lastName: schema.lastName,
        firstName: schema.firstName,
        schoolId: schema.schoolId,
        schoolYear: schema.schoolYear,
        authorizedAt: schema.authorizedAt,
      );

  UsersTableCompanion toDrift() => UsersTableCompanion(
        id: Value<int>(id),
        lastName: Value<String>(lastName),
        firstName: Value<String>(firstName),
        schoolId: Value<int>(schoolId),
        schoolYear: Value<int>(schoolYear),
        authorizedAt: Value<DateTime?>(authorizedAt),
      );
}
