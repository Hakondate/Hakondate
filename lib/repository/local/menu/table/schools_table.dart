import 'package:moor/moor.dart';

@DataClassName('SchoolsSchema')
class SchoolsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get parentId => integer()();
  TextColumn get name => text()();
  IntColumn get lunchBlock => integer()();
  IntColumn get classification => integer()();
}