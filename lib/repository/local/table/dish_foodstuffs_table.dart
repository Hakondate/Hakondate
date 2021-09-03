import 'package:moor/moor.dart';

@DataClassName('DishFoodstuffsSchema')
class DishFoodstuffsTable extends Table {
  IntColumn get dishId => integer()();
  IntColumn get foodstuffId => integer()();

  @override
  Set<Column> get primaryKey => {dishId, foodstuffId};

  @override
  List<String> get customConstraints => [
    'FOREIGN KEY(dish_id) REFERENCES dishes_table(id)',
    'FOREIGN KEY(foodstuff_id) REFERENCES foodstuffs_table(id)'
  ];
}