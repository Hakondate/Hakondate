import 'package:hakondate_v2/model/school/school_model.dart';
import 'package:hakondate_v2/repository/local/database_manager.dart';

import 'package:moor/moor.dart';

class SchoolsLocalRepository {
  SchoolsLocalRepository() {
    _databaseManager = databaseManager;
  }

  late final DatabaseManager _databaseManager;

  Future<int> count() => _databaseManager.countSchools();

  Future<List<SchoolModel>> getAll() async {
    final List<SchoolModel> _schools = [];
    final List<SchoolsSchema> _schoolsSchemas =
        await _databaseManager.allSchoolsSchemas;
    for (var schoolSchema in _schoolsSchemas) {
      _schools.add(SchoolModel(
          id: schoolSchema.id,
          parentId: schoolSchema.parentId,
          name: schoolSchema.name,
          classification: schoolSchema.classification,
        ));
    }

    return _schools;
  }

  Future<SchoolModel> getById(int id) async {
    final SchoolsSchema _schoolsSchema =
        await _databaseManager.getSchoolsSchemaById(id);

    return SchoolModel(
      id: _schoolsSchema.id,
      parentId: _schoolsSchema.parentId,
      name: _schoolsSchema.name,
      classification: _schoolsSchema.classification,
    );
  }

  Future<int> add(Map<String, dynamic> school) async {
    final SchoolsTableCompanion _schoolsSchema = SchoolsTableCompanion(
      id: Value(school['id']),
      parentId: Value(school['parentId']),
      name: Value(school['name']),
      lunchBlock: Value(school['lunchBlock']),
      classification: Value(school['classification']),
    );

    return await _databaseManager.addSchoolsSchema(_schoolsSchema);
  }
}
