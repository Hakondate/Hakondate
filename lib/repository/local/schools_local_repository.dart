import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/local_database.dart';
import 'package:hakondate/util/exception/sqlite_exception.dart';
import 'package:hakondate/view_model/multi_page/common_function.dart';

final schoolsLocalRepositoryProvider = Provider<SchoolsLocalRepository>((ref) {
  final LocalDatabase localDatabase = ref.read(localDatabaseProvider);
  final CommonFunction commonFunction = ref.read(commonFunctionProvider.notifier);
  return SchoolsLocalRepository(localDatabase, commonFunction);
});

abstract class SchoolsLocalRepositoryBase {
  Future<int> count();
  Future<List<SchoolModel>> getAll();
  Future<SchoolModel> getById(int id);
  Future<int> add(Map<String, dynamic> school);
  Future<DateTime> getLatestUpdateDay();
}

class SchoolsLocalRepository extends SchoolsLocalRepositoryBase {
  SchoolsLocalRepository(this._db, this._commonFunction) : super();

  final LocalDatabase _db;
  final CommonFunction _commonFunction;

  @override
  Future<int> count() async {
    final Expression<int> exp = _db.schoolsTable.id.count();
    final query = _db.selectOnly(_db.schoolsTable)..addColumns([exp]);
    final int? count = await query.map((scheme) => scheme.read(exp)).getSingleOrNull();

    return count ?? 0;
  }

  @override
  Future<List<SchoolModel>> getAll() async {
    final List<SchoolModel> schools = [];
    final List<SchoolsSchema> schoolsSchemas = await _db.select(_db.schoolsTable).get();

    for (SchoolsSchema schoolSchema in schoolsSchemas) {
      schools.add(SchoolModel(
          id: schoolSchema.id,
          parentId: schoolSchema.parentId,
          name: schoolSchema.name,
          classification: _judgeClassification(schoolSchema.classification),
        ));
    }

    return schools;
  }

  @override
  Future<SchoolModel> getById(int id) async {
    final SchoolsSchema? schoolsSchema =
        await (_db.select(_db.schoolsTable)..where((t) => t.id.equals(id))).getSingleOrNull();

    if (schoolsSchema == null) throw SQLiteException('Failed to select $id from schoolsTable');

    return SchoolModel(
      id: schoolsSchema.id,
      parentId: schoolsSchema.parentId,
      name: schoolsSchema.name,
      classification: _judgeClassification(schoolsSchema.classification),
    );
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
        id: Value(school['id']),
        parentId: Value(school['parentId']),
        name: Value(school['name']),
        lunchBlock: Value(school['lunchBlock']),
        classification: Value(school['classification']),
        updateAt: Value(_commonFunction.getDayFromTimestamp(school['updateAt'])),
      ));

  @override
  Future<DateTime> getLatestUpdateDay() async {
    final Expression<DateTime> exp = _db.schoolsTable.updateAt.max();
    final query = _db.selectOnly(_db.schoolsTable)..addColumns([exp]);
    final DateTime? day = await query.map((scheme) => scheme.read(exp)).getSingleOrNull();

    return day ?? DateTime(1970);
  }
}
