import 'package:moor/moor.dart';

@DataClassName('FoodstuffsSchema')
class FoodstuffsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get foodID => integer()();
  IntColumn get piece => integer().nullable()();
  RealColumn get gram => real()();

  @override
  List<String> get customConstraints => [
    'FOREIGN KEY(food_id) REFERENCES foods_table(id)'
  ];
}