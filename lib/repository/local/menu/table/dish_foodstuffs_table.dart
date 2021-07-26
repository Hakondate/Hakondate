import 'package:moor/moor.dart';

@DataClassName('DishFoodstuffsSchema')
class DishFoodstuffsTable extends Table {
  IntColumn get dishID => integer()();
  IntColumn get foodstuffID => integer()();

  @override
  List<String> get customConstraints => [
    'FOREIGN KEY(dish_id) REFERENCES dishes_table(id)',
    'FOREIGN KEY(foodstuff_id) REFERENCES foodstuffs_table(id)'
  ];
}