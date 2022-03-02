import 'package:moor/moor.dart';

@DataClassName('SchoolsSchema')
class SchoolsTable extends Table {
  IntColumn get id => integer()();
  IntColumn get parentId => integer()();
  TextColumn get name => text()();
  IntColumn get lunchBlock => integer().nullable()();
  TextColumn get classification => text()();

  @override
  Set<Column> get primaryKey => {id};
}
