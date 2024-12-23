// ignore_for_file: always_specify_types

import 'package:drift/drift.dart';

@DataClassName('SchoolsSchema')
class SchoolsTable extends Table {
  IntColumn get id => integer()();
  IntColumn get parentId => integer()();
  TextColumn get name => text()();
  IntColumn get lunchBlock => integer()();
  TextColumn get classification => text()();
  DateTimeColumn get createAt => dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get updateAt => dateTime().withDefault(Constant(DateTime.now()))();
  BoolColumn get authorizationRequired => boolean().withDefault(const Constant(false))();
  DateTimeColumn get authorizationKeyUpdatedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
