import 'package:moor/moor.dart';

@DataClassName('DishesSchema')
class DishesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get category => text().nullable()();
}