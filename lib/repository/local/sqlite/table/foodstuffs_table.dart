import 'package:drift/drift.dart';

@DataClassName('FoodstuffsSchema')
class FoodstuffsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  RealColumn get pieceNumber => real().nullable()();
  TextColumn get pieceUnit => text().nullable()();
  RealColumn get gram => real()();
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
  BoolColumn get isHeat => boolean()();
  BoolColumn get isAllergy => boolean()();
  TextColumn get origin => text().nullable()();

  @override
  // ignore: always_specify_types
  List<Set<Column>> get uniqueKeys => [
    <Column<Object>>{name, gram, isHeat, isAllergy},
  ];
}
