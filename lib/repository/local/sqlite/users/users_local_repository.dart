import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/util/exception/sqlite_exception.dart';

part 'users_local_repository.g.dart';

@Riverpod(keepAlive: true)
UsersLocalRepository usersLocalRepository(UsersLocalRepositoryRef ref) {
  final LocalDatabase localDatabase = ref.watch(localDatabaseProvider);
  return UsersLocalRepository(localDatabase);
}

abstract class UsersLocalRepositoryAPI {
  Future<List<UserModel>> list();
  Future<UserModel> getById(int id);
  Future<int> add(String name, int schoolId, int schoolYear, DateTime? authorizedAt);
  Future<int> update(UserModel user);
  Future<int> count();
  Future<int> delete(int id);
  Future<void> deleteAll();
}

class UsersLocalRepository extends UsersLocalRepositoryAPI {
  UsersLocalRepository(this._db);

  final LocalDatabase _db;

  @override
  Future<List<UserModel>> list() async {
    final List<UserModel> users = <UserModel>[];
    final List<UsersSchema> usersSchemas = await _db.select(_db.usersTable).get();

    for (final UsersSchema usersSchema in usersSchemas) {
      users.add(UserModel.fromDrift(usersSchema));
    }

    return users;
  }

  @override
  Future<UserModel> getById(int id) async {
    final UsersSchema? usersSchema = await (_db.select(_db.usersTable)..where(($UsersTableTable t) => t.id.equals(id))).getSingleOrNull();
    if (usersSchema == null) throw SQLiteException('Failed to select $id from usersTable');

    return UserModel.fromDrift(usersSchema);
  }

  @override
  Future<int> add(String name, int schoolId, int schoolYear, DateTime? authorizedAt) => _db.into(_db.usersTable).insertOnConflictUpdate(
        UsersTableCompanion(
          name: Value<String>(name),
          schoolId: Value<int>(schoolId),
          schoolYear: Value<int>(schoolYear),
          authorizedAt: Value<DateTime?>(authorizedAt),
        ),
      );

  @override
  Future<int> update(UserModel user) async {
    final UsersTableCompanion companion = user.toDrift();

    return (_db.update(_db.usersTable)
          ..where(
            ($UsersTableTable t) => t.id.equals(companion.id.value),
          ))
        .write(companion);
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
