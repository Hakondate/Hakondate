import 'package:drift/drift.dart';

import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/util/exception/sqlite_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_local_repository.g.dart';

@Riverpod(keepAlive: true)
UsersLocalRepository usersLocalRepository (UsersLocalRepositoryRef ref) {
  final LocalDatabase localDatabase = ref.watch(localDatabaseProvider);
  return UsersLocalRepository(localDatabase);
}

abstract class UsersLocalRepositoryAPI {
  Future<List<UserModel>> getAll();
  Future<UserModel> getById(int id);
  Future<int> add(String name, int schoolId, int schoolYear);
  Future<int> update(UserModel user);
  Future<int> count();
  Future<int> delete(int id);
  Future<void> deleteAll();
}

class UsersLocalRepository extends UsersLocalRepositoryAPI {
  UsersLocalRepository(this._db);

  final LocalDatabase _db;

  @override
  Future<List<UserModel>> getAll() async {
    final List<UserModel> users = <UserModel>[];
    final List<UsersSchema> usersSchemas = await _db.select(_db.usersTable).get();

    for (final UsersSchema usersSchema in usersSchemas) {
      final UserModel user = UserModel(
        id: usersSchema.id,
        name: usersSchema.name,
        schoolId: usersSchema.schoolId,
        schoolYear: usersSchema.schoolYear,
      );
      users.add(user);
    }

    return users;
  }

  @override
  Future<UserModel> getById(int id) async {
    final UsersSchema? usersSchema =
        await (_db.select(_db.usersTable)..where(($UsersTableTable t) => t.id.equals(id))).getSingleOrNull();

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
          name: Value<String>(name),
          schoolId: Value<int>(schoolId),
          schoolYear: Value<int>(schoolYear),
        ),
      );

  @override
  Future<int> update(UserModel user) async {
    final UsersTableCompanion companion = UsersTableCompanion(
      id: Value<int>(user.id),
      name: Value<String>(user.name),
      schoolId: Value<int>(user.schoolId),
      schoolYear: Value<int>(user.schoolYear),
    );

    return (_db.update(_db.usersTable)..where(($UsersTableTable t) =>
        t.id.equals(companion.id.value),
    )).write(companion);
  }

  @override
  Future<int> count() async {
    final Expression<int> exp = _db.usersTable.id.count();
    final JoinedSelectStatement<$UsersTableTable, UsersSchema> query = _db.selectOnly(_db.usersTable)..addColumns(<Expression<int>>[exp]);
    final int? count = await query.map((TypedResult scheme) => scheme.read(exp)).getSingleOrNull();

    return count ?? 0;
  }

  @override
  Future<int> delete(int id) => (_db.delete(_db.usersTable)..where(($UsersTableTable t) => t.id.equals(id))).go();

  @override
  Future<void> deleteAll() => _db.delete(_db.usersTable).go();
}
