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
import 'package:hakondate/repository/local/sqlite/table/dictionary_items_table.dart';

part 'local_database.g.dart';

final Provider<LocalDatabase> localDatabaseProvider = Provider<LocalDatabase>((_) {
  final LazyDatabase lazyDatabase = LazyDatabase(() async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File(p.join(directory.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });

  return LocalDatabase(lazyDatabase);
});

@DriftDatabase(
  tables: <Type>[
    SchoolsTable,
    MenusTable,
    MenuDishesTable,
    DishesTable,
    DishFoodstuffsTable,
    FoodstuffsTable,
    UsersTable,
    DictionaryItemsTable,
  ],
)
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase(LazyDatabase super.lazyDatabase);

  @override
  int get schemaVersion => 1;
}
