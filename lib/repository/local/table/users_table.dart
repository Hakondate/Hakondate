import 'package:moor/moor.dart';

@DataClassName('UsersSchema')
class UsersTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get schoolId => integer()();
  IntColumn get schoolYear => integer()();

  @override
  List<String> get customConstraints => [
    'FOREIGN KEY(school_id) REFERENCES schools_table(id)',
  ];
}
