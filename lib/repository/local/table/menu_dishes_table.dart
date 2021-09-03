import 'package:moor/moor.dart';

@DataClassName('MenuDishesSchema')
class MenuDishesTable extends Table {
  IntColumn get menuId => integer()();
  IntColumn get dishId => integer()();

  @override
  List<String> get customConstraints => [
    'FOREIGN KEY(menu_id) REFERENCES menus_table(id)',
    'FOREIGN KEY(dish_id) REFERENCES dishes_table(id)',
    'UNIQUE (menuId, dishId)'
  ];
}