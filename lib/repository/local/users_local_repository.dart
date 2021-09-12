import 'package:hakondate_v2/model/user/user_model.dart';
import 'package:hakondate_v2/repository/local/database_manager.dart';
import 'package:moor/moor.dart';

class UsersLocalRepository {
  UsersLocalRepository() {
    this._databaseManager = databaseManager;
  }

  late final DatabaseManager _databaseManager;

  Future<List<UserModel>> getAllUser() async {
    List<UserModel> _users = [];
    final List<UsersSchema> _usersSchemas = await _databaseManager.allUsersSchemas;
    _usersSchemas.forEach((UsersSchema usersSchema) {
      final UserModel _user = UserModel(
        id: usersSchema.id,
        name: usersSchema.name,
        schoolId: usersSchema.schoolId,
        schoolYear: usersSchema.schoolYear,
      );
      _users.add(_user);
    });

    return _users;
  }

  Future<UserModel> getUserById(int id) async {
    final UsersSchema _usersSchema = await _databaseManager.getUsersSchemaById(id);
    return UserModel(
      id: _usersSchema.id,
      name: _usersSchema.name,
      schoolId: _usersSchema.schoolId,
      schoolYear: _usersSchema.schoolYear,
    );
  }

  Future<int> addUser(String name, int schoolId, int schoolYear) async {
    return await _databaseManager.addUsersSchema(
      UsersTableCompanion(
        name: Value(name),
        schoolId: Value(schoolId),
        schoolYear: Value(schoolYear),
      )
    );
  }

  Future<void> updateUser(UserModel user) async {
    await _databaseManager.updateUser(UsersTableCompanion(
      id: Value(user.id),
      name: Value(user.name),
      schoolId: Value(user.schoolId),
      schoolYear: Value(user.schoolYear),
    ));
  }
}
