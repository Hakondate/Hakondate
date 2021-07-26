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
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
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
}