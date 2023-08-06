import 'package:drift/drift.dart';

import 'package:hakondate/repository/local/sqlite/table/dishes_table.dart';
import 'package:hakondate/repository/local/sqlite/table/foodstuffs_table.dart';

@DataClassName('DishFoodstuffsSchema')
class DishFoodstuffsTable extends Table {
  IntColumn get dishId => integer().references(DishesTable, #id)();
  IntColumn get foodstuffId => integer().references(FoodstuffsTable, #id)();

  @override
  // ignore: always_specify_types
  Set<Column> get primaryKey => {dishId, foodstuffId};
}
