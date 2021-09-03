import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'package:hakondate_v2/repository/local/table/dish_foodstuffs_table.dart';
import 'package:hakondate_v2/repository/local/table/dishes_table.dart';
import 'package:hakondate_v2/repository/local/table/foodstuffs_table.dart';
import 'package:hakondate_v2/repository/local/table/menu_dishes_table.dart';
import 'package:hakondate_v2/repository/local/table/menus_table.dart';
import 'package:hakondate_v2/repository/local/table/schools_table.dart';

part 'database_manager.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final _dbFolder = await getApplicationDocumentsDirectory();
    final _file = File(p.join(_dbFolder.path, 'db.sqlite'));
    return VmDatabase(_file);
  });
}

final DatabaseManager databaseManager = DatabaseManager();

@UseMoor(tables: [
  SchoolsTable,
  MenusTable,
  MenuDishesTable,
  DishesTable,
  DishFoodstuffsTable,
  FoodstuffsTable,
])
class DatabaseManager extends _$DatabaseManager {
  DatabaseManager() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  /* SELECT */
  // MenusSchemaの全データ取得
  Future<List<MenusSchema>> get allMenusSchemas => select(menusTable).get();

  // 範囲指定でのデータ取得
  Future<List<MenusSchema>> getSelectionPeriodMenusSchemas(DateTime startDay, DateTime endDay, int schoolId) =>
      (select(menusTable)..where((t) => t.day.isBetweenValues(startDay, endDay) & t.schoolId.equals(schoolId))).get();

  // IDからMenusSchemaを取得
  Future<MenusSchema> getMenusSchemaById(int id) =>
      (select(menusTable)..where((t) => t.id.equals(id))).getSingle();

  // IDからSchoolSchemaを取得
  Future<SchoolsSchema> getSchoolsSchemaById(int id) =>
      (select(schoolsTable)..where((t) => t.id.equals(id))).getSingle();

  // MenuIDから献立の料理IDが格納されているリストを取得
  Future<List<MenuDishesSchema>> getMenuDishesSchemasByMenuId(int id) =>
      (select(menuDishesTable)..where((t) => t.menuId.equals(id))).get();

  // IDからDishesSchemaを取得
  Future<DishesSchema> getDishesSchemaById(int id) =>
      (select(dishesTable)..where((t) => t.id.equals(id))).getSingle();

  // DishIDから料理の食材IDが格納されているリストを取得
  Future<List<DishFoodstuffsSchema>> getDishFoodstuffsSchemasByDishId(int id) =>
      (select(dishFoodstuffsTable)..where((t) => t.dishId.equals(id))).get();

  // IDからFoodstuffsSchemaを取得
  Future<FoodstuffsSchema> getFoodstuffsSchemaById(int id) =>
      (select(foodstuffsTable)..where((t) => t.id.equals(id))).getSingle();

  /* INSERT */
  // MenusSchemaを追加
  Future<int> addMenusSchema(MenusTableCompanion entry) =>
      into(menusTable).insert(
          entry,
          onConflict: DoUpdate((old) => MenusTableCompanion.custom(
              event: Constant(entry.event.value)
          ))
      );

  // SchoolsSchemaを追加
  Future<int> addSchoolsSchema(SchoolsTableCompanion entry) =>
      into(schoolsTable).insertOnConflictUpdate(entry);

  // MenuDishesSchemaを追加
  Future<int> addMenuDishesSchema(MenuDishesTableCompanion entry) =>
      into(menuDishesTable).insertOnConflictUpdate(entry);

  // DishesSchemaを追加
  Future<int> addDishesSchema(DishesTableCompanion entry) =>
      into(dishesTable).insert(
          entry,
          onConflict: DoUpdate((old) => DishesTableCompanion.custom(
              category: Constant(entry.category.value)
          ))
      );

  // DishFoodstuffsSchemaを追加
  Future<int> addDishFoodstuffsSchema(DishFoodstuffsTableCompanion entry) =>
      into(dishFoodstuffsTable).insertOnConflictUpdate(entry);

  // FoodstuffsSchemaを追加
  Future<int> addFoodstuffsSchema(FoodstuffsTableCompanion entry) =>
      into(foodstuffsTable).insert(
          entry,
          onConflict: DoUpdate((old) => FoodstuffsTableCompanion.custom(
            origin: Constant(entry.origin.value)
          ))
      );
}
