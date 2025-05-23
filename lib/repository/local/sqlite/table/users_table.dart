import 'package:drift/drift.dart';

import 'package:hakondate/repository/local/sqlite/table/schools_table.dart';

@DataClassName('UsersSchema')
class UsersTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get schoolId => integer().references(SchoolsTable, #id)();
  IntColumn get schoolYear => integer()();
  DateTimeColumn get authorizedAt => dateTime().nullable()();
}
