import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'package:hakondate/repository/local/sqlite/table/dish_foodstuffs_table.dart';
import 'package:hakondate/repository/local/sqlite/table/dishes_table.dart';
import 'package:hakondate/repository/local/sqlite/table/foodstuffs_table.dart';
import 'package:hakondate/repository/local/sqlite/table/menu_dishes_table.dart';
import 'package:hakondate/repository/local/sqlite/table/menus_table.dart';
import 'package:hakondate/repository/local/sqlite/table/schools_table.dart';
import 'package:hakondate/repository/local/sqlite/table/users_table.dart';

part 'database_manager.g.dart';

final databaseManagerProvider = Provider<DatabaseManager>((ref) {
  final LazyDatabase lazyDatabase = LazyDatabase(() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File(p.join(directory.path, 'db.sqlite'));
    return NativeDatabase(file);
  });

  return DatabaseManager(lazyDatabase);
});

@DriftDatabase(tables: [
  SchoolsTable,
  MenusTable,
  MenuDishesTable,
  DishesTable,
  DishFoodstuffsTable,
  FoodstuffsTable,
  UsersTable,
])
class DatabaseManager extends _$DatabaseManager {
  DatabaseManager(LazyDatabase _lazyDatabase) : super(_lazyDatabase);

  @override
  int get schemaVersion => 1;
}
