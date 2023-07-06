import 'package:drift/drift.dart';

import 'package:hakondate/repository/local/sqlite/table/dishes_table.dart';
import 'package:hakondate/repository/local/sqlite/table/menus_table.dart';

@DataClassName('MenuDishesSchema')
class MenuDishesTable extends Table {
  IntColumn get menuId => integer().references(MenusTable, #id)();
  IntColumn get dishId => integer().references(DishesTable, #id)();

  @override
  // ignore: always_specify_types
  List<Set<Column>> get uniqueKeys => [
    <Column<Object>>{menuId, dishId},
  ];
}
