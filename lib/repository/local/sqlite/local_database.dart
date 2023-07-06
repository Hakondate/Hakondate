import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/repository/local/sqlite/table/dish_foodstuffs_table.dart';
import 'package:hakondate/repository/local/sqlite/table/dishes_table.dart';
import 'package:hakondate/repository/local/sqlite/table/foodstuffs_table.dart';
import 'package:hakondate/repository/local/sqlite/table/menu_dishes_table.dart';
import 'package:hakondate/repository/local/sqlite/table/menus_table.dart';
import 'package:hakondate/repository/local/sqlite/table/schools_table.dart';
import 'package:hakondate/repository/local/sqlite/table/users_table.dart';
import 'package:hakondate/util/environment.dart';

part 'local_database.g.dart';

@Riverpod(keepAlive: true)
LocalDatabase localDatabase (LocalDatabaseRef ref) {
  final LazyDatabase lazyDatabase = LazyDatabase(() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File(p.join(directory.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });

  return LocalDatabase(lazyDatabase);
}

@DriftDatabase(
  tables: <Type>[
    SchoolsTable,
    MenusTable,
    MenuDishesTable,
    DishesTable,
    DishFoodstuffsTable,
    FoodstuffsTable,
    UsersTable,
  ],
)
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase(LazyDatabase super.lazyDatabase);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onUpgrade: (_, __, ___) async {
        await customStatement('PRAGMA foreign_keys = OFF');

        await transaction(() async {
          /* migrarion logic here */
        });

        if (Environment.flavor == Flavor.dev) {
          final List<QueryRow> wrongForeignKeys = await customSelect('PRAGMA foreign_key_check').get();
          assert(wrongForeignKeys.isEmpty, '${wrongForeignKeys.map((QueryRow e) => e.data)}');
        }
      },
      beforeOpen: (_) async {
        await customStatement('PRAGMA foreign_keys = ON');
      },
    );
  }
}
