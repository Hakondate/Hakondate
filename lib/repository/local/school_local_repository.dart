import 'package:hakondate_v2/model/school/school_model.dart';
import 'package:hakondate_v2/repository/local/database_manager.dart';

class SchoolLocalRepository {
  SchoolLocalRepository() {
    this._databaseManager = databaseManager;
  }

  late final DatabaseManager _databaseManager;

  Future<SchoolModel> getSchoolById(int id) async {
    final SchoolsSchema _schoolsSchema = await _databaseManager.getSchoolsSchemaById(id);
    return SchoolModel(
        id: _schoolsSchema.id,
        parentId: _schoolsSchema.parentId,
        name: _schoolsSchema.name,
        classification: _schoolsSchema.classification,
    );
  }
}
