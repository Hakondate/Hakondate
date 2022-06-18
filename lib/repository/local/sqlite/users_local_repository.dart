import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/util/exception/sqlite_exception.dart';

final usersLocalRepositoryProvider = Provider<UsersLocalRepository>((ref) {
  final LocalDatabase localDatabase = ref.read(localDatabaseProvider);
  return UsersLocalRepository(localDatabase);
});

abstract class UsersLocalRepositoryBase {
  Future<List<UserModel>> getAll();
  Future<UserModel> getById(int id);
  Future<int> add(String name, int schoolId, int schoolYear);
  Future<int> update(UserModel user);
  Future<int> count();
  Future<int> delete(int id);
  Future<void> deleteAll();
}

class UsersLocalRepository extends UsersLocalRepositoryBase {
  UsersLocalRepository(this._db) : super();

  final LocalDatabase _db;

  @override
  Future<List<UserModel>> getAll() async {
    List<UserModel> users = [];
    final List<UsersSchema> usersSchemas = await _db.select(_db.usersTable).get();

    for (var usersSchema in usersSchemas) {
      final UserModel _user = UserModel(
        id: usersSchema.id,
        name: usersSchema.name,
        schoolId: usersSchema.schoolId,
        schoolYear: usersSchema.schoolYear,
      );
      users.add(_user);
    }

    return users;
  }

  @override
  Future<UserModel> getById(int id) async {
    final UsersSchema? usersSchema =
        await (_db.select(_db.usersTable)..where((t) => t.id.equals(id))).getSingleOrNull();

    if (usersSchema == null) throw SQLiteException('Failed to select $id from usersTable');

    return UserModel(
      id: usersSchema.id,
      name: usersSchema.name,
      schoolId: usersSchema.schoolId,
      schoolYear: usersSchema.schoolYear,
    );
  }

  @override
  Future<int> add(String name, int schoolId, int schoolYear) =>
      _db.into(_db.usersTable).insertOnConflictUpdate(
        UsersTableCompanion(
          name: Value(name),
          schoolId: Value(schoolId),
          schoolYear: Value(schoolYear),
        ));

  @override
  Future<int> update(UserModel user) async {
    final UsersTableCompanion companion = UsersTableCompanion(
      id: Value(user.id),
      name: Value(user.name),
      schoolId: Value(user.schoolId),
      schoolYear: Value(user.schoolYear),
    );

    return await (_db.update(_db.usersTable)..where((t) =>
        t.id.equals(companion.id.value))).write(companion);
  }

  @override
  Future<int> count() async {
    final Expression<int> exp = _db.usersTable.id.count();
    final query = _db.selectOnly(_db.usersTable)..addColumns([exp]);
    final int? count = await query.map((scheme) => scheme.read(exp)).getSingleOrNull();

    return count ?? 0;
  }

  @override
  Future<int> delete(int id) => (_db.delete(_db.usersTable)..where((t) => t.id.equals(id))).go();

  @override
  Future<void> deleteAll() => _db.delete(_db.usersTable).go();
}
