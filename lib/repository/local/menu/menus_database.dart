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

  // IDからMenusSchemaを取得(Streamで変更監視し，変更があれば新しい結果を返す)
  Stream<MenusSchema> getMenusSchemaById(int id) =>
      (select(menusTable)..where((t) => t.id.equals(id))).watchSingle();

  // IDからSchoolSchemaを取得
  Stream<SchoolsSchema> getSchoolsSchemaById(int id) =>
      (select(schoolsTable)..where((t) => t.id.equals(id))).watchSingle();

  // MenuIDから献立の料理IDが格納されているリストを取得
  Stream<List<MenuDishesSchema>> getMenuDishesSchemasByMenuId(int id) =>
      (select(menuDishesTable)..where((t) => t.menuId.equals(id))).watch();

  // IDからDishesSchemaを取得
  Stream<DishesSchema> getDishesSchemaById(int id) =>
      (select(dishesTable)..where((t) => t.id.equals(id))).watchSingle();

  // DishIDから料理の食材IDが格納されているリストを取得
  Stream<List<DishFoodstuffsSchema>> getDishFoodstuffsSchemasByDishId(int id) =>
      (select(dishFoodstuffsTable)..where((t) => t.dishId.equals(id))).watch();

  // IDからFoodstuffsSchemaを取得
  Stream<FoodstuffsSchema> getFoodstuffsSchemaById(int id) =>
      (select(foodstuffsTable)..where((t) => t.id.equals(id))).watchSingle();

  // IDからFoodsSchemaを取得
  Stream<FoodsSchema> getFoodsSchemaById(int id) =>
      (select(foodsTable)..where((t) => t.id.equals(id))).watchSingle();
}