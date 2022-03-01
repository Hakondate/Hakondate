import 'package:hakondate_v2/model/school/school_model.dart';
import 'package:hakondate_v2/repository/local/database_manager.dart';
import 'package:hakondate_v2/unit/enum.dart';

import 'package:moor/moor.dart';

class SchoolsLocalRepository {
  SchoolsLocalRepository() {
    _databaseManager = databaseManager;
  }

  late final DatabaseManager _databaseManager;

  Future<int> count() => _databaseManager.countSchools();

  Future<List<SchoolModel>> getAll() async {
    final List<SchoolModel> schools = [];
    final List<SchoolsSchema> schoolsSchemas =
        await _databaseManager.allSchoolsSchemas;
    for (var schoolSchema in schoolsSchemas) {
      schools.add(SchoolModel(
          id: schoolSchema.id,
          parentId: schoolSchema.parentId,
          name: schoolSchema.name,
          classification: _judgeClassification(schoolSchema.classification),
        ));
    }

    return schools;
  }

  Future<SchoolModel> getById(int id) async {
    final SchoolsSchema schoolsSchema =
        await _databaseManager.getSchoolsSchemaById(id);

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

  Future<int> add(Map<String, dynamic> school) async {
    final SchoolsTableCompanion schoolsSchema = SchoolsTableCompanion(
      id: Value(school['id']),
      parentId: Value(school['parentId']),
      name: Value(school['name']),
      lunchBlock: Value(school['lunchBlock']),
      classification: Value(school['classification']),
    );

    return await _databaseManager.addSchoolsSchema(schoolsSchema);
  }
}
