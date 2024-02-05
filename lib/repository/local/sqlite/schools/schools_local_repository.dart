import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/util/exception/sqlite_exception.dart';

part 'schools_local_repository.g.dart';

@Riverpod(keepAlive: true)
SchoolsLocalRepository schoolsLocalRepository(SchoolsLocalRepositoryRef ref) {
  final LocalDatabase localDatabase = ref.watch(localDatabaseProvider);
  return SchoolsLocalRepository(localDatabase);
}

abstract class SchoolsLocalRepositoryAPI {
  Future<int> count();
  Future<List<SchoolModel>> list();
  Future<SchoolModel> getById(int id);
  Future<List<int>> listParentIdsByUsers(List<UserModel> users);
  Future<SchoolModel?> getByName(String name);
  Future<List<SchoolModel>> getByParentId(int parentId);
  Future<int> add(SchoolModel school);
  Future<DateTime> getLatestUpdateDay();
}

class SchoolsLocalRepository extends SchoolsLocalRepositoryAPI {
  SchoolsLocalRepository(this._db);

  final LocalDatabase _db;

  @override
  Future<int> count() async {
    final Expression<int> exp = _db.schoolsTable.id.count();
    final JoinedSelectStatement<$SchoolsTableTable, SchoolsSchema> query =
        _db.selectOnly(_db.schoolsTable)..addColumns(<Expression<int>>[exp]);
    final int? count = await query
        .map((TypedResult scheme) => scheme.read(exp))
        .getSingleOrNull();

    return count ?? 0;
  }

  @override
  Future<List<SchoolModel>> list() async {
    final List<SchoolModel> schools = <SchoolModel>[];
    final List<SchoolsSchema> schoolsSchemas =
        await _db.select(_db.schoolsTable).get();

    for (final SchoolsSchema schoolsSchema in schoolsSchemas) {
      schools.add(SchoolModel.fromDrift(schoolsSchema));
    }

    return schools;
  }

  @override
  Future<SchoolModel> getById(int id) async {
    final SchoolsSchema? schoolsSchema = await (_db.select(_db.schoolsTable)
          ..where(($SchoolsTableTable t) => t.id.equals(id)))
        .getSingleOrNull();

    if (schoolsSchema == null)
      throw SQLiteException('Failed to select $id from schoolsTable');

    return SchoolModel.fromDrift(schoolsSchema);
  }

  @override
  Future<List<int>> listParentIdsByUsers(List<UserModel> users) async {
    final List<int> schoolIds =
        users.map((UserModel user) => user.schoolId).toSet().toList();

    final List<TypedResult> rows =
        await (_db.selectOnly(_db.schoolsTable, distinct: true)
              ..where(_db.schoolsTable.id.isIn(schoolIds))
              ..addColumns(<Expression<int>>[_db.schoolsTable.parentId]))
            .get();

    final List<int> parentIds = rows
        .map((TypedResult row) => row.read(_db.schoolsTable.parentId))
        .whereType<int>()
        .toList();

    return parentIds;
  }

  @override
  Future<SchoolModel?> getByName(String name) async {
    final SchoolsSchema? schoolsSchema = await (_db.select(_db.schoolsTable)
          ..where(($SchoolsTableTable t) => t.name.equals(name)))
        .getSingleOrNull();

    if (schoolsSchema == null) return null;

    return SchoolModel.fromDrift(schoolsSchema);
  }

  @override
  Future<List<SchoolModel>> getByParentId(int parentId) async {
    final List<SchoolModel> schools = <SchoolModel>[];
    final List<SchoolsSchema> schoolsSchemas =
        await (_db.select(_db.schoolsTable)
              ..where(($SchoolsTableTable t) => t.parentId.equals(parentId)))
            .get();

    for (final SchoolsSchema schoolsSchema in schoolsSchemas) {
      schools.add(SchoolModel.fromDrift(schoolsSchema));
    }

    return schools;
  }

  @override
  Future<int> add(SchoolModel school) =>
      _db.into(_db.schoolsTable).insertOnConflictUpdate(school.toDrift());

  @override
  Future<DateTime> getLatestUpdateDay() async {
    if (await count() < 1) return DateTime(1970);

    final Expression<DateTime> exp = _db.schoolsTable.updateAt.max();
    final JoinedSelectStatement<$SchoolsTableTable, SchoolsSchema> query = _db
        .selectOnly(_db.schoolsTable)
      ..addColumns(<Expression<DateTime>>[exp]);
    final DateTime? day = await query
        .map((TypedResult scheme) => scheme.read(exp))
        .getSingleOrNull();

    return day ?? DateTime(1970);
  }
}
