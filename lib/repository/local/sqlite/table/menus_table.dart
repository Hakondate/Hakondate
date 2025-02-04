// 説明
// ignore_for_file: always_specify_types

import 'package:drift/drift.dart';

import 'package:hakondate/repository/local/sqlite/table/schools_table.dart';

/// SQLiteのテーブル定義
/// Moorで利用するための定義を行なっている
/// [customConstraints]では外部キーを定義
@DataClassName('MenusSchema')
class MenusTable extends Table {
  IntColumn get id => integer()();
  DateTimeColumn get day => dateTime()();
  IntColumn get schoolId => integer().references(SchoolsTable, #id)();
  TextColumn get event => text().nullable()();
  DateTimeColumn get createAt => dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get updateAt => dateTime().withDefault(Constant(DateTime.now()))();

  @override
  Set<Column> get primaryKey => {id};
}
