import 'package:drift/drift.dart';

@DataClassName('MenuDishesSchema')
class MenuDishesTable extends Table {
  IntColumn get menuId => integer()();
  IntColumn get dishId => integer()();

  @override
  // ignore: always_specify_types
  Set<Column> get primaryKey => {menuId, dishId};

  @override
  List<String> get customConstraints => <String>[
    'FOREIGN KEY(menu_id) REFERENCES menus_table(id)',
    'FOREIGN KEY(dish_id) REFERENCES dishes_table(id)',
  ];
}
