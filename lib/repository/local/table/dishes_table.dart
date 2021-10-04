import 'package:moor/moor.dart';

@DataClassName('DishesSchema')
class DishesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().customConstraint('NOT NULL UNIQUE')();
  TextColumn get category => text().nullable()();
}