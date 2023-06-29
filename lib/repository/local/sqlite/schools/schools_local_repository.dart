import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/util/common_function/common_function.dart';
import 'package:hakondate/util/exception/sqlite_exception.dart';

part 'schools_local_repository.g.dart';

@Riverpod(keepAlive: true)
SchoolsLocalRepository schoolsLocalRepository(SchoolsLocalRepositoryRef ref) {
  final LocalDatabase localDatabase = ref.watch(localDatabaseProvider);
  return SchoolsLocalRepository(localDatabase, ref);
}

abstract class SchoolsLocalRepositoryAPI {
  Future<int> count();
  Future<List<SchoolModel>> list();
  Future<SchoolModel> getById(int id);
  Future<List<SchoolModel>> getByParentId(int parentId);
  Future<int> add(Map<String, dynamic> school);
  Future<DateTime> getLatestUpdateDay();
}

class SchoolsLocalRepository extends SchoolsLocalRepositoryAPI {
  SchoolsLocalRepository(this._db, this._ref);

  final LocalDatabase _db;
  final Ref _ref;

  @override
  Future<int> count() async {
    final Expression<int> exp = _db.schoolsTable.id.count();
    final JoinedSelectStatement<$SchoolsTableTable, SchoolsSchema> query = _db.selectOnly(_db.schoolsTable)..addColumns(<Expression<int>>[exp]);
    final int? count = await query.map((TypedResult scheme) => scheme.read(exp)).getSingleOrNull();

    return count ?? 0;
  }

  @override
  Future<List<SchoolModel>> list() async {
    final List<SchoolModel> schools = <SchoolModel>[];
    final List<SchoolsSchema> schoolsSchemas = await _db.select(_db.schoolsTable).get();

    for (final SchoolsSchema schoolSchema in schoolsSchemas) {
      schools.add(
        SchoolModel(
          id: schoolSchema.id,
          parentId: schoolSchema.parentId,
          name: schoolSchema.name,
          classification: _judgeClassification(schoolSchema.classification),
        ),
      );
    }

    return schools;
  }

  @override
  Future<SchoolModel> getById(int id) async {
    final SchoolsSchema? schoolsSchema = await (_db.select(_db.schoolsTable)..where(($SchoolsTableTable t) => t.id.equals(id))).getSingleOrNull();

    if (schoolsSchema == null) throw SQLiteException('Failed to select $id from schoolsTable');

    return SchoolModel(
      id: schoolsSchema.id,
      parentId: schoolsSchema.parentId,
      name: schoolsSchema.name,
      classification: _judgeClassification(schoolsSchema.classification),
    );
  }

  @override
  Future<List<SchoolModel>> getByParentId(int parentId) async {
    final List<SchoolModel> schools = <SchoolModel>[];
    final List<SchoolsSchema> schoolsSchemas = await (_db.select(_db.schoolsTable)..where(($SchoolsTableTable t) => t.parentId.equals(parentId))).get();

    for (final SchoolsSchema schoolsSchema in schoolsSchemas) {
      schools.add(
        SchoolModel(
          id: schoolsSchema.id,
          parentId: schoolsSchema.parentId,
          name: schoolsSchema.name,
          classification: _judgeClassification(schoolsSchema.classification),
        ),
      );
    }

    return schools;
  }

  SchoolClassification _judgeClassification(String classificationStr) {
    switch (classificationStr) {
      case 'primary':
        return SchoolClassification.primary;
      case 'secondary':
        return SchoolClassification.secondary;
      default:
        return SchoolClassification.secondary;
    }
  }

  @override
  Future<int> add(Map<String, dynamic> school) => _db.into(_db.schoolsTable).insertOnConflictUpdate(
        SchoolsTableCompanion(
          id: Value<int>(school['id'] as int),
          parentId: Value<int>(school['parentId'] as int),
          name: Value<String>(school['name'] as String),
          lunchBlock: Value<int>(school['lunchBlock'] as int),
          classification: Value<String>(school['classification'] as String),
          updateAt: Value<DateTime>(_ref.read(commonFunctionProvider).getDayFromTimestamp(school['updateAt'])),
        ),
      );

  @override
  Future<DateTime> getLatestUpdateDay() async {
    if (await count() < 1) return DateTime(1970);

    final Expression<DateTime> exp = _db.schoolsTable.updateAt.max();
    final JoinedSelectStatement<$SchoolsTableTable, SchoolsSchema> query = _db.selectOnly(_db.schoolsTable)..addColumns(<Expression<DateTime>>[exp]);
    final DateTime? day = await query.map((TypedResult scheme) => scheme.read(exp)).getSingleOrNull();

    return day ?? DateTime(1970);
  }
}
