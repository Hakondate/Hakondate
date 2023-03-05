import 'package:drift/drift.dart';

@DataClassName('DishFoodstuffsSchema')
class DishFoodstuffsTable extends Table {
  IntColumn get dishId => integer()();
  IntColumn get foodstuffId => integer()();

  @override
  // ignore: always_specify_types
  Set<Column> get primaryKey => {dishId, foodstuffId};

  @override
  List<String> get customConstraints => <String>[
    'FOREIGN KEY(dish_id) REFERENCES dishes_table(id)',
    'FOREIGN KEY(foodstuff_id) REFERENCES foodstuffs_table(id)',
  ];
}
