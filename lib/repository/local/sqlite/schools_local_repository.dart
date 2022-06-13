import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/database_manager.dart';

final schoolsLocalRepositoryProvider = Provider<SchoolsLocalRepository>((ref) {
  final DatabaseManager databaseManager = ref.read(databaseManagerProvider);
  return SchoolsLocalRepository(databaseManager);
});

abstract class SchoolsLocalRepositoryBase {
  Future<int> count();
  Future<List<SchoolModel>> getAll();
  Future<SchoolModel> getById(int id);
  Future<int> add(Map<String, dynamic> school);
}

class SchoolsLocalRepository extends SchoolsLocalRepositoryBase {
  SchoolsLocalRepository(this._db) : super();

  final DatabaseManager _db;

  @override
  Future<int> count() async {
    final Expression<int> exp = _db.schoolsTable.id.count();
    final query = _db.selectOnly(_db.schoolsTable)..addColumns([exp]);

    return await query.map((scheme) => scheme.read(exp)).getSingle();
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
    final SchoolsSchema schoolsSchema =
        await (_db.select(_db.schoolsTable)..where((t) => t.id.equals(id))).getSingle();

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
  Future<int> add(Map<String, dynamic> school) =>
      _db.into(_db.schoolsTable).insertOnConflictUpdate(
        SchoolsTableCompanion(
          id: Value(school['id']),
          parentId: Value(school['parentId']),
          name: Value(school['name']),
          lunchBlock: Value(school['lunchBlock']),
          classification: Value(school['classification']),
        ));
}
