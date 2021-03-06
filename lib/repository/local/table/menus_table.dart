import 'package:drift/drift.dart';

/// SQLiteのテーブル定義
/// Moorで利用するための定義を行なっている
/// [customConstraints]では外部キーを定義
@DataClassName('MenusSchema')
class MenusTable extends Table {
  IntColumn get id => integer()();
  DateTimeColumn get day => dateTime()();
  IntColumn get schoolId => integer()();
  TextColumn get event => text().nullable()();
  DateTimeColumn get createAt => dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get updateAt => dateTime().withDefault(Constant(DateTime.now()))();

  @override
  Set<Column> get primaryKey => {id};

  @override
  List<String> get customConstraints => [
    'FOREIGN KEY(school_id) REFERENCES schools_table(id)',
  ];
}
