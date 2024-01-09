import 'package:drift/drift.dart';

@DataClassName('DishesSchema')
class DishesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().unique()();
  TextColumn get category => text().nullable()();
}
