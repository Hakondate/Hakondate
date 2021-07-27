import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'package:hakondate_v2/repository/local/menu/table/dish_foodstuffs_table.dart';
import 'package:hakondate_v2/repository/local/menu/table/dishes_table.dart';
import 'package:hakondate_v2/repository/local/menu/table/foods_table.dart';
import 'package:hakondate_v2/repository/local/menu/table/foodstuffs_table.dart';
import 'package:hakondate_v2/repository/local/menu/table/menu_dishes_table.dart';
import 'package:hakondate_v2/repository/local/menu/table/menus_table.dart';
import 'package:hakondate_v2/repository/local/menu/table/schools_table.dart';

part 'menus_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path + '/database', 'menus.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [
  SchoolsTable,
  MenusTable,
  MenuDishesTable,
  DishesTable,
  DishFoodstuffsTable,
  FoodstuffsTable,
  FoodsTable
])
class MenusDatabase extends _$MenusDatabase {
  MenusDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  /* SELECT */
  // MenusSchemaの全データ取得
  Future<List<MenusSchema>> get allMenusSchemas => select(menusTable).get();

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

  // IDからFoodsSchemaを取得
  Future<FoodsSchema> getFoodsSchemaById(int id) =>
      (select(foodsTable)..where((t) => t.id.equals(id))).getSingle();

  /* INSERT */
  // MenusSchemaを追加
  Future<int> addMenusSchema(MenusTableCompanion entry) =>
      into(menusTable).insert(entry);

  // SchoolsSchemaを追加
  Future<int> addSchoolsSchema(SchoolsTableCompanion entry) =>
      into(schoolsTable).insert(entry);

  // MenuDishesSchemaを追加
  Future<int> addMenuDishesSchema(MenuDishesTableCompanion entry) =>
      into(menuDishesTable).insert(entry);

  // DishesSchemaを追加
  Future<int> addDishesSchema(DishesTableCompanion entry) =>
      into(dishesTable).insert(entry);

  // DishFoodstuffsSchemaを追加
  Future<int> addDishFoodstuffsSchema(DishFoodstuffsTableCompanion entry) =>
      into(dishFoodstuffsTable).insert(entry);

  // FoodstuffsSchemaを追加
  Future<int> addFoodstuffsSchema(FoodstuffsTableCompanion entry) =>
      into(foodstuffsTable).insert(entry);

  // FoodsSchemaを追加
  Future<int> addFoodsSchema(FoodsTableCompanion entry) =>
      into(foodsTable).insert(entry);
}