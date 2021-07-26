import 'package:moor/moor.dart';

@DataClassName('FoodsSchema')
class FoodsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  BoolColumn get isHeat => boolean()();
  BoolColumn get isAllergy => boolean()();
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
}