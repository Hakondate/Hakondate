import 'package:moor/moor.dart';

@DataClassName('MenusSchema')
class MenusTable extends Table {
  IntColumn get id => integer()();
  IntColumn get day => integer()();
  IntColumn get schoolId => integer()();

  @override
  Set<Column> get primaryKey => {id};

  @override
  List<String> get customConstraints => [
    'FOREIGN KEY(school_id) REFERENCES schools_table(id)'
  ];
}