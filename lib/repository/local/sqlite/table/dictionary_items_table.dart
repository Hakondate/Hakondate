import 'package:drift/drift.dart';

@DataClassName('DictionaryItemsSchema')
class DictionaryItemsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get group => integer()();
  TextColumn get name => text()();
  RealColumn get energy => real()();
  RealColumn get protein => real()();
  RealColumn get lipid => real()();
  RealColumn get sodium => real()();
  RealColumn get carbohydrate => real()();
  RealColumn get calcium => real()();
  RealColumn get magnesium => real()();
  RealColumn get iron => real()();
  RealColumn get zinc => real()();
  RealColumn get retinol => real()();
  RealColumn get vitaminB1 => real()();
  RealColumn get vitaminB2 => real()();
  RealColumn get vitaminC => real()();
  RealColumn get dietaryFiber => real()();
  RealColumn get salt => real()();
  TextColumn get note => text().nullable()();
}
