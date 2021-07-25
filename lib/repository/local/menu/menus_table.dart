import 'package:moor/moor.dart';

@DataClassName('MenusSchema')
class MenusTable extends Table {
  IntColumn get id => integer()();
  IntColumn get day => integer()();
  IntColumn get schoolId => integer()();

  @override
  Set<Column> get primaryKey => {id};
}