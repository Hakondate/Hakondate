// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class SchoolsSchema extends DataClass implements Insertable<SchoolsSchema> {
  final int id;
  final int parentId;
  final String name;
  final int? lunchBlock;
  final String classification;
  final DateTime createAt;
  final DateTime updateAt;
  SchoolsSchema(
      {required this.id,
      required this.parentId,
      required this.name,
      this.lunchBlock,
      required this.classification,
      required this.createAt,
      required this.updateAt});
  factory SchoolsSchema.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SchoolsSchema(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      parentId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}parent_id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      lunchBlock: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lunch_block']),
      classification: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}classification'])!,
      createAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}create_at'])!,
      updateAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}update_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['parent_id'] = Variable<int>(parentId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || lunchBlock != null) {
      map['lunch_block'] = Variable<int?>(lunchBlock);
    }
    map['classification'] = Variable<String>(classification);
    map['create_at'] = Variable<DateTime>(createAt);
    map['update_at'] = Variable<DateTime>(updateAt);
    return map;
  }

  SchoolsTableCompanion toCompanion(bool nullToAbsent) {
    return SchoolsTableCompanion(
      id: Value(id),
      parentId: Value(parentId),
      name: Value(name),
      lunchBlock: lunchBlock == null && nullToAbsent
          ? const Value.absent()
          : Value(lunchBlock),
      classification: Value(classification),
      createAt: Value(createAt),
      updateAt: Value(updateAt),
    );
  }

  factory SchoolsSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SchoolsSchema(
      id: serializer.fromJson<int>(json['id']),
      parentId: serializer.fromJson<int>(json['parentId']),
      name: serializer.fromJson<String>(json['name']),
      lunchBlock: serializer.fromJson<int?>(json['lunchBlock']),
      classification: serializer.fromJson<String>(json['classification']),
      createAt: serializer.fromJson<DateTime>(json['createAt']),
      updateAt: serializer.fromJson<DateTime>(json['updateAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'parentId': serializer.toJson<int>(parentId),
      'name': serializer.toJson<String>(name),
      'lunchBlock': serializer.toJson<int?>(lunchBlock),
      'classification': serializer.toJson<String>(classification),
      'createAt': serializer.toJson<DateTime>(createAt),
      'updateAt': serializer.toJson<DateTime>(updateAt),
    };
  }

  SchoolsSchema copyWith(
          {int? id,
          int? parentId,
          String? name,
          int? lunchBlock,
          String? classification,
          DateTime? createAt,
          DateTime? updateAt}) =>
      SchoolsSchema(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        lunchBlock: lunchBlock ?? this.lunchBlock,
        classification: classification ?? this.classification,
        createAt: createAt ?? this.createAt,
        updateAt: updateAt ?? this.updateAt,
      );
  @override
  String toString() {
    return (StringBuffer('SchoolsSchema(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('name: $name, ')
          ..write('lunchBlock: $lunchBlock, ')
          ..write('classification: $classification, ')
          ..write('createAt: $createAt, ')
          ..write('updateAt: $updateAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, parentId, name, lunchBlock, classification, createAt, updateAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SchoolsSchema &&
          other.id == this.id &&
          other.parentId == this.parentId &&
          other.name == this.name &&
          other.lunchBlock == this.lunchBlock &&
          other.classification == this.classification &&
          other.createAt == this.createAt &&
          other.updateAt == this.updateAt);
}

class SchoolsTableCompanion extends UpdateCompanion<SchoolsSchema> {
  final Value<int> id;
  final Value<int> parentId;
  final Value<String> name;
  final Value<int?> lunchBlock;
  final Value<String> classification;
  final Value<DateTime> createAt;
  final Value<DateTime> updateAt;
  const SchoolsTableCompanion({
    this.id = const Value.absent(),
    this.parentId = const Value.absent(),
    this.name = const Value.absent(),
    this.lunchBlock = const Value.absent(),
    this.classification = const Value.absent(),
    this.createAt = const Value.absent(),
    this.updateAt = const Value.absent(),
  });
  SchoolsTableCompanion.insert({
    this.id = const Value.absent(),
    required int parentId,
    required String name,
    this.lunchBlock = const Value.absent(),
    required String classification,
    this.createAt = const Value.absent(),
    this.updateAt = const Value.absent(),
  })  : parentId = Value(parentId),
        name = Value(name),
        classification = Value(classification);
  static Insertable<SchoolsSchema> custom({
    Expression<int>? id,
    Expression<int>? parentId,
    Expression<String>? name,
    Expression<int?>? lunchBlock,
    Expression<String>? classification,
    Expression<DateTime>? createAt,
    Expression<DateTime>? updateAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (parentId != null) 'parent_id': parentId,
      if (name != null) 'name': name,
      if (lunchBlock != null) 'lunch_block': lunchBlock,
      if (classification != null) 'classification': classification,
      if (createAt != null) 'create_at': createAt,
      if (updateAt != null) 'update_at': updateAt,
    });
  }

  SchoolsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? parentId,
      Value<String>? name,
      Value<int?>? lunchBlock,
      Value<String>? classification,
      Value<DateTime>? createAt,
      Value<DateTime>? updateAt}) {
    return SchoolsTableCompanion(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      name: name ?? this.name,
      lunchBlock: lunchBlock ?? this.lunchBlock,
      classification: classification ?? this.classification,
      createAt: createAt ?? this.createAt,
      updateAt: updateAt ?? this.updateAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<int>(parentId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (lunchBlock.present) {
      map['lunch_block'] = Variable<int?>(lunchBlock.value);
    }
    if (classification.present) {
      map['classification'] = Variable<String>(classification.value);
    }
    if (createAt.present) {
      map['create_at'] = Variable<DateTime>(createAt.value);
    }
    if (updateAt.present) {
      map['update_at'] = Variable<DateTime>(updateAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SchoolsTableCompanion(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('name: $name, ')
          ..write('lunchBlock: $lunchBlock, ')
          ..write('classification: $classification, ')
          ..write('createAt: $createAt, ')
          ..write('updateAt: $updateAt')
          ..write(')'))
        .toString();
  }
}

class $SchoolsTableTable extends SchoolsTable
    with TableInfo<$SchoolsTableTable, SchoolsSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SchoolsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  @override
  late final GeneratedColumn<int?> parentId = GeneratedColumn<int?>(
      'parent_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lunchBlockMeta = const VerificationMeta('lunchBlock');
  @override
  late final GeneratedColumn<int?> lunchBlock = GeneratedColumn<int?>(
      'lunch_block', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _classificationMeta =
      const VerificationMeta('classification');
  @override
  late final GeneratedColumn<String?> classification = GeneratedColumn<String?>(
      'classification', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _createAtMeta = const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime?> createAt = GeneratedColumn<DateTime?>(
      'create_at', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  final VerificationMeta _updateAtMeta = const VerificationMeta('updateAt');
  @override
  late final GeneratedColumn<DateTime?> updateAt = GeneratedColumn<DateTime?>(
      'update_at', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  @override
  List<GeneratedColumn> get $columns =>
      [id, parentId, name, lunchBlock, classification, createAt, updateAt];
  @override
  String get aliasedName => _alias ?? 'schools_table';
  @override
  String get actualTableName => 'schools_table';
  @override
  VerificationContext validateIntegrity(Insertable<SchoolsSchema> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    } else if (isInserting) {
      context.missing(_parentIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('lunch_block')) {
      context.handle(
          _lunchBlockMeta,
          lunchBlock.isAcceptableOrUnknown(
              data['lunch_block']!, _lunchBlockMeta));
    }
    if (data.containsKey('classification')) {
      context.handle(
          _classificationMeta,
          classification.isAcceptableOrUnknown(
              data['classification']!, _classificationMeta));
    } else if (isInserting) {
      context.missing(_classificationMeta);
    }
    if (data.containsKey('create_at')) {
      context.handle(_createAtMeta,
          createAt.isAcceptableOrUnknown(data['create_at']!, _createAtMeta));
    }
    if (data.containsKey('update_at')) {
      context.handle(_updateAtMeta,
          updateAt.isAcceptableOrUnknown(data['update_at']!, _updateAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SchoolsSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SchoolsSchema.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SchoolsTableTable createAlias(String alias) {
    return $SchoolsTableTable(attachedDatabase, alias);
  }
}

class MenusSchema extends DataClass implements Insertable<MenusSchema> {
  final int id;
  final DateTime day;
  final int schoolId;
  final String? event;
  final DateTime createAt;
  final DateTime updateAt;
  MenusSchema(
      {required this.id,
      required this.day,
      required this.schoolId,
      this.event,
      required this.createAt,
      required this.updateAt});
  factory MenusSchema.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MenusSchema(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      day: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}day'])!,
      schoolId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}school_id'])!,
      event: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}event']),
      createAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}create_at'])!,
      updateAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}update_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['day'] = Variable<DateTime>(day);
    map['school_id'] = Variable<int>(schoolId);
    if (!nullToAbsent || event != null) {
      map['event'] = Variable<String?>(event);
    }
    map['create_at'] = Variable<DateTime>(createAt);
    map['update_at'] = Variable<DateTime>(updateAt);
    return map;
  }

  MenusTableCompanion toCompanion(bool nullToAbsent) {
    return MenusTableCompanion(
      id: Value(id),
      day: Value(day),
      schoolId: Value(schoolId),
      event:
          event == null && nullToAbsent ? const Value.absent() : Value(event),
      createAt: Value(createAt),
      updateAt: Value(updateAt),
    );
  }

  factory MenusSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MenusSchema(
      id: serializer.fromJson<int>(json['id']),
      day: serializer.fromJson<DateTime>(json['day']),
      schoolId: serializer.fromJson<int>(json['schoolId']),
      event: serializer.fromJson<String?>(json['event']),
      createAt: serializer.fromJson<DateTime>(json['createAt']),
      updateAt: serializer.fromJson<DateTime>(json['updateAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'day': serializer.toJson<DateTime>(day),
      'schoolId': serializer.toJson<int>(schoolId),
      'event': serializer.toJson<String?>(event),
      'createAt': serializer.toJson<DateTime>(createAt),
      'updateAt': serializer.toJson<DateTime>(updateAt),
    };
  }

  MenusSchema copyWith(
          {int? id,
          DateTime? day,
          int? schoolId,
          String? event,
          DateTime? createAt,
          DateTime? updateAt}) =>
      MenusSchema(
        id: id ?? this.id,
        day: day ?? this.day,
        schoolId: schoolId ?? this.schoolId,
        event: event ?? this.event,
        createAt: createAt ?? this.createAt,
        updateAt: updateAt ?? this.updateAt,
      );
  @override
  String toString() {
    return (StringBuffer('MenusSchema(')
          ..write('id: $id, ')
          ..write('day: $day, ')
          ..write('schoolId: $schoolId, ')
          ..write('event: $event, ')
          ..write('createAt: $createAt, ')
          ..write('updateAt: $updateAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, day, schoolId, event, createAt, updateAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MenusSchema &&
          other.id == this.id &&
          other.day == this.day &&
          other.schoolId == this.schoolId &&
          other.event == this.event &&
          other.createAt == this.createAt &&
          other.updateAt == this.updateAt);
}

class MenusTableCompanion extends UpdateCompanion<MenusSchema> {
  final Value<int> id;
  final Value<DateTime> day;
  final Value<int> schoolId;
  final Value<String?> event;
  final Value<DateTime> createAt;
  final Value<DateTime> updateAt;
  const MenusTableCompanion({
    this.id = const Value.absent(),
    this.day = const Value.absent(),
    this.schoolId = const Value.absent(),
    this.event = const Value.absent(),
    this.createAt = const Value.absent(),
    this.updateAt = const Value.absent(),
  });
  MenusTableCompanion.insert({
    this.id = const Value.absent(),
    required DateTime day,
    required int schoolId,
    this.event = const Value.absent(),
    this.createAt = const Value.absent(),
    this.updateAt = const Value.absent(),
  })  : day = Value(day),
        schoolId = Value(schoolId);
  static Insertable<MenusSchema> custom({
    Expression<int>? id,
    Expression<DateTime>? day,
    Expression<int>? schoolId,
    Expression<String?>? event,
    Expression<DateTime>? createAt,
    Expression<DateTime>? updateAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (day != null) 'day': day,
      if (schoolId != null) 'school_id': schoolId,
      if (event != null) 'event': event,
      if (createAt != null) 'create_at': createAt,
      if (updateAt != null) 'update_at': updateAt,
    });
  }

  MenusTableCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? day,
      Value<int>? schoolId,
      Value<String?>? event,
      Value<DateTime>? createAt,
      Value<DateTime>? updateAt}) {
    return MenusTableCompanion(
      id: id ?? this.id,
      day: day ?? this.day,
      schoolId: schoolId ?? this.schoolId,
      event: event ?? this.event,
      createAt: createAt ?? this.createAt,
      updateAt: updateAt ?? this.updateAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (day.present) {
      map['day'] = Variable<DateTime>(day.value);
    }
    if (schoolId.present) {
      map['school_id'] = Variable<int>(schoolId.value);
    }
    if (event.present) {
      map['event'] = Variable<String?>(event.value);
    }
    if (createAt.present) {
      map['create_at'] = Variable<DateTime>(createAt.value);
    }
    if (updateAt.present) {
      map['update_at'] = Variable<DateTime>(updateAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MenusTableCompanion(')
          ..write('id: $id, ')
          ..write('day: $day, ')
          ..write('schoolId: $schoolId, ')
          ..write('event: $event, ')
          ..write('createAt: $createAt, ')
          ..write('updateAt: $updateAt')
          ..write(')'))
        .toString();
  }
}

class $MenusTableTable extends MenusTable
    with TableInfo<$MenusTableTable, MenusSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MenusTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _dayMeta = const VerificationMeta('day');
  @override
  late final GeneratedColumn<DateTime?> day = GeneratedColumn<DateTime?>(
      'day', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _schoolIdMeta = const VerificationMeta('schoolId');
  @override
  late final GeneratedColumn<int?> schoolId = GeneratedColumn<int?>(
      'school_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _eventMeta = const VerificationMeta('event');
  @override
  late final GeneratedColumn<String?> event = GeneratedColumn<String?>(
      'event', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createAtMeta = const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime?> createAt = GeneratedColumn<DateTime?>(
      'create_at', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  final VerificationMeta _updateAtMeta = const VerificationMeta('updateAt');
  @override
  late final GeneratedColumn<DateTime?> updateAt = GeneratedColumn<DateTime?>(
      'update_at', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  @override
  List<GeneratedColumn> get $columns =>
      [id, day, schoolId, event, createAt, updateAt];
  @override
  String get aliasedName => _alias ?? 'menus_table';
  @override
  String get actualTableName => 'menus_table';
  @override
  VerificationContext validateIntegrity(Insertable<MenusSchema> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('day')) {
      context.handle(
          _dayMeta, day.isAcceptableOrUnknown(data['day']!, _dayMeta));
    } else if (isInserting) {
      context.missing(_dayMeta);
    }
    if (data.containsKey('school_id')) {
      context.handle(_schoolIdMeta,
          schoolId.isAcceptableOrUnknown(data['school_id']!, _schoolIdMeta));
    } else if (isInserting) {
      context.missing(_schoolIdMeta);
    }
    if (data.containsKey('event')) {
      context.handle(
          _eventMeta, event.isAcceptableOrUnknown(data['event']!, _eventMeta));
    }
    if (data.containsKey('create_at')) {
      context.handle(_createAtMeta,
          createAt.isAcceptableOrUnknown(data['create_at']!, _createAtMeta));
    }
    if (data.containsKey('update_at')) {
      context.handle(_updateAtMeta,
          updateAt.isAcceptableOrUnknown(data['update_at']!, _updateAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MenusSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MenusSchema.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MenusTableTable createAlias(String alias) {
    return $MenusTableTable(attachedDatabase, alias);
  }
}

class MenuDishesSchema extends DataClass
    implements Insertable<MenuDishesSchema> {
  final int menuId;
  final int dishId;
  MenuDishesSchema({required this.menuId, required this.dishId});
  factory MenuDishesSchema.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MenuDishesSchema(
      menuId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}menu_id'])!,
      dishId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dish_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['menu_id'] = Variable<int>(menuId);
    map['dish_id'] = Variable<int>(dishId);
    return map;
  }

  MenuDishesTableCompanion toCompanion(bool nullToAbsent) {
    return MenuDishesTableCompanion(
      menuId: Value(menuId),
      dishId: Value(dishId),
    );
  }

  factory MenuDishesSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MenuDishesSchema(
      menuId: serializer.fromJson<int>(json['menuId']),
      dishId: serializer.fromJson<int>(json['dishId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'menuId': serializer.toJson<int>(menuId),
      'dishId': serializer.toJson<int>(dishId),
    };
  }

  MenuDishesSchema copyWith({int? menuId, int? dishId}) => MenuDishesSchema(
        menuId: menuId ?? this.menuId,
        dishId: dishId ?? this.dishId,
      );
  @override
  String toString() {
    return (StringBuffer('MenuDishesSchema(')
          ..write('menuId: $menuId, ')
          ..write('dishId: $dishId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(menuId, dishId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MenuDishesSchema &&
          other.menuId == this.menuId &&
          other.dishId == this.dishId);
}

class MenuDishesTableCompanion extends UpdateCompanion<MenuDishesSchema> {
  final Value<int> menuId;
  final Value<int> dishId;
  const MenuDishesTableCompanion({
    this.menuId = const Value.absent(),
    this.dishId = const Value.absent(),
  });
  MenuDishesTableCompanion.insert({
    required int menuId,
    required int dishId,
  })  : menuId = Value(menuId),
        dishId = Value(dishId);
  static Insertable<MenuDishesSchema> custom({
    Expression<int>? menuId,
    Expression<int>? dishId,
  }) {
    return RawValuesInsertable({
      if (menuId != null) 'menu_id': menuId,
      if (dishId != null) 'dish_id': dishId,
    });
  }

  MenuDishesTableCompanion copyWith({Value<int>? menuId, Value<int>? dishId}) {
    return MenuDishesTableCompanion(
      menuId: menuId ?? this.menuId,
      dishId: dishId ?? this.dishId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (menuId.present) {
      map['menu_id'] = Variable<int>(menuId.value);
    }
    if (dishId.present) {
      map['dish_id'] = Variable<int>(dishId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MenuDishesTableCompanion(')
          ..write('menuId: $menuId, ')
          ..write('dishId: $dishId')
          ..write(')'))
        .toString();
  }
}

class $MenuDishesTableTable extends MenuDishesTable
    with TableInfo<$MenuDishesTableTable, MenuDishesSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MenuDishesTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _menuIdMeta = const VerificationMeta('menuId');
  @override
  late final GeneratedColumn<int?> menuId = GeneratedColumn<int?>(
      'menu_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _dishIdMeta = const VerificationMeta('dishId');
  @override
  late final GeneratedColumn<int?> dishId = GeneratedColumn<int?>(
      'dish_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [menuId, dishId];
  @override
  String get aliasedName => _alias ?? 'menu_dishes_table';
  @override
  String get actualTableName => 'menu_dishes_table';
  @override
  VerificationContext validateIntegrity(Insertable<MenuDishesSchema> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('menu_id')) {
      context.handle(_menuIdMeta,
          menuId.isAcceptableOrUnknown(data['menu_id']!, _menuIdMeta));
    } else if (isInserting) {
      context.missing(_menuIdMeta);
    }
    if (data.containsKey('dish_id')) {
      context.handle(_dishIdMeta,
          dishId.isAcceptableOrUnknown(data['dish_id']!, _dishIdMeta));
    } else if (isInserting) {
      context.missing(_dishIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {menuId, dishId};
  @override
  MenuDishesSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MenuDishesSchema.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MenuDishesTableTable createAlias(String alias) {
    return $MenuDishesTableTable(attachedDatabase, alias);
  }
}

class DishesSchema extends DataClass implements Insertable<DishesSchema> {
  final int id;
  final String name;
  final String? category;
  DishesSchema({required this.id, required this.name, this.category});
  factory DishesSchema.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DishesSchema(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String?>(category);
    }
    return map;
  }

  DishesTableCompanion toCompanion(bool nullToAbsent) {
    return DishesTableCompanion(
      id: Value(id),
      name: Value(name),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
    );
  }

  factory DishesSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DishesSchema(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      category: serializer.fromJson<String?>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'category': serializer.toJson<String?>(category),
    };
  }

  DishesSchema copyWith({int? id, String? name, String? category}) =>
      DishesSchema(
        id: id ?? this.id,
        name: name ?? this.name,
        category: category ?? this.category,
      );
  @override
  String toString() {
    return (StringBuffer('DishesSchema(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, category);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DishesSchema &&
          other.id == this.id &&
          other.name == this.name &&
          other.category == this.category);
}

class DishesTableCompanion extends UpdateCompanion<DishesSchema> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> category;
  const DishesTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.category = const Value.absent(),
  });
  DishesTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.category = const Value.absent(),
  }) : name = Value(name);
  static Insertable<DishesSchema> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String?>? category,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (category != null) 'category': category,
    });
  }

  DishesTableCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<String?>? category}) {
    return DishesTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (category.present) {
      map['category'] = Variable<String?>(category.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DishesTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }
}

class $DishesTableTable extends DishesTable
    with TableInfo<$DishesTableTable, DishesSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DishesTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL UNIQUE');
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, category];
  @override
  String get aliasedName => _alias ?? 'dishes_table';
  @override
  String get actualTableName => 'dishes_table';
  @override
  VerificationContext validateIntegrity(Insertable<DishesSchema> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DishesSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DishesSchema.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DishesTableTable createAlias(String alias) {
    return $DishesTableTable(attachedDatabase, alias);
  }
}

class DishFoodstuffsSchema extends DataClass
    implements Insertable<DishFoodstuffsSchema> {
  final int dishId;
  final int foodstuffId;
  DishFoodstuffsSchema({required this.dishId, required this.foodstuffId});
  factory DishFoodstuffsSchema.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DishFoodstuffsSchema(
      dishId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dish_id'])!,
      foodstuffId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}foodstuff_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['dish_id'] = Variable<int>(dishId);
    map['foodstuff_id'] = Variable<int>(foodstuffId);
    return map;
  }

  DishFoodstuffsTableCompanion toCompanion(bool nullToAbsent) {
    return DishFoodstuffsTableCompanion(
      dishId: Value(dishId),
      foodstuffId: Value(foodstuffId),
    );
  }

  factory DishFoodstuffsSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DishFoodstuffsSchema(
      dishId: serializer.fromJson<int>(json['dishId']),
      foodstuffId: serializer.fromJson<int>(json['foodstuffId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'dishId': serializer.toJson<int>(dishId),
      'foodstuffId': serializer.toJson<int>(foodstuffId),
    };
  }

  DishFoodstuffsSchema copyWith({int? dishId, int? foodstuffId}) =>
      DishFoodstuffsSchema(
        dishId: dishId ?? this.dishId,
        foodstuffId: foodstuffId ?? this.foodstuffId,
      );
  @override
  String toString() {
    return (StringBuffer('DishFoodstuffsSchema(')
          ..write('dishId: $dishId, ')
          ..write('foodstuffId: $foodstuffId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(dishId, foodstuffId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DishFoodstuffsSchema &&
          other.dishId == this.dishId &&
          other.foodstuffId == this.foodstuffId);
}

class DishFoodstuffsTableCompanion
    extends UpdateCompanion<DishFoodstuffsSchema> {
  final Value<int> dishId;
  final Value<int> foodstuffId;
  const DishFoodstuffsTableCompanion({
    this.dishId = const Value.absent(),
    this.foodstuffId = const Value.absent(),
  });
  DishFoodstuffsTableCompanion.insert({
    required int dishId,
    required int foodstuffId,
  })  : dishId = Value(dishId),
        foodstuffId = Value(foodstuffId);
  static Insertable<DishFoodstuffsSchema> custom({
    Expression<int>? dishId,
    Expression<int>? foodstuffId,
  }) {
    return RawValuesInsertable({
      if (dishId != null) 'dish_id': dishId,
      if (foodstuffId != null) 'foodstuff_id': foodstuffId,
    });
  }

  DishFoodstuffsTableCompanion copyWith(
      {Value<int>? dishId, Value<int>? foodstuffId}) {
    return DishFoodstuffsTableCompanion(
      dishId: dishId ?? this.dishId,
      foodstuffId: foodstuffId ?? this.foodstuffId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (dishId.present) {
      map['dish_id'] = Variable<int>(dishId.value);
    }
    if (foodstuffId.present) {
      map['foodstuff_id'] = Variable<int>(foodstuffId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DishFoodstuffsTableCompanion(')
          ..write('dishId: $dishId, ')
          ..write('foodstuffId: $foodstuffId')
          ..write(')'))
        .toString();
  }
}

class $DishFoodstuffsTableTable extends DishFoodstuffsTable
    with TableInfo<$DishFoodstuffsTableTable, DishFoodstuffsSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DishFoodstuffsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _dishIdMeta = const VerificationMeta('dishId');
  @override
  late final GeneratedColumn<int?> dishId = GeneratedColumn<int?>(
      'dish_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _foodstuffIdMeta =
      const VerificationMeta('foodstuffId');
  @override
  late final GeneratedColumn<int?> foodstuffId = GeneratedColumn<int?>(
      'foodstuff_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [dishId, foodstuffId];
  @override
  String get aliasedName => _alias ?? 'dish_foodstuffs_table';
  @override
  String get actualTableName => 'dish_foodstuffs_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DishFoodstuffsSchema> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('dish_id')) {
      context.handle(_dishIdMeta,
          dishId.isAcceptableOrUnknown(data['dish_id']!, _dishIdMeta));
    } else if (isInserting) {
      context.missing(_dishIdMeta);
    }
    if (data.containsKey('foodstuff_id')) {
      context.handle(
          _foodstuffIdMeta,
          foodstuffId.isAcceptableOrUnknown(
              data['foodstuff_id']!, _foodstuffIdMeta));
    } else if (isInserting) {
      context.missing(_foodstuffIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {dishId, foodstuffId};
  @override
  DishFoodstuffsSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DishFoodstuffsSchema.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DishFoodstuffsTableTable createAlias(String alias) {
    return $DishFoodstuffsTableTable(attachedDatabase, alias);
  }
}

class FoodstuffsSchema extends DataClass
    implements Insertable<FoodstuffsSchema> {
  final int id;
  final String name;
  final int? piece;
  final double gram;
  final double energy;
  final double protein;
  final double lipid;
  final double sodium;
  final double carbohydrate;
  final double calcium;
  final double magnesium;
  final double iron;
  final double zinc;
  final double retinol;
  final double vitaminB1;
  final double vitaminB2;
  final double vitaminC;
  final double dietaryFiber;
  final double salt;
  final bool isHeat;
  final bool isAllergy;
  final String? origin;
  FoodstuffsSchema(
      {required this.id,
      required this.name,
      this.piece,
      required this.gram,
      required this.energy,
      required this.protein,
      required this.lipid,
      required this.sodium,
      required this.carbohydrate,
      required this.calcium,
      required this.magnesium,
      required this.iron,
      required this.zinc,
      required this.retinol,
      required this.vitaminB1,
      required this.vitaminB2,
      required this.vitaminC,
      required this.dietaryFiber,
      required this.salt,
      required this.isHeat,
      required this.isAllergy,
      this.origin});
  factory FoodstuffsSchema.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FoodstuffsSchema(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      piece: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}piece']),
      gram: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gram'])!,
      energy: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}energy'])!,
      protein: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}protein'])!,
      lipid: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lipid'])!,
      sodium: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sodium'])!,
      carbohydrate: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}carbohydrate'])!,
      calcium: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}calcium'])!,
      magnesium: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}magnesium'])!,
      iron: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}iron'])!,
      zinc: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}zinc'])!,
      retinol: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}retinol'])!,
      vitaminB1: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vitamin_b1'])!,
      vitaminB2: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vitamin_b2'])!,
      vitaminC: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vitamin_c'])!,
      dietaryFiber: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dietary_fiber'])!,
      salt: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}salt'])!,
      isHeat: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_heat'])!,
      isAllergy: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_allergy'])!,
      origin: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}origin']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || piece != null) {
      map['piece'] = Variable<int?>(piece);
    }
    map['gram'] = Variable<double>(gram);
    map['energy'] = Variable<double>(energy);
    map['protein'] = Variable<double>(protein);
    map['lipid'] = Variable<double>(lipid);
    map['sodium'] = Variable<double>(sodium);
    map['carbohydrate'] = Variable<double>(carbohydrate);
    map['calcium'] = Variable<double>(calcium);
    map['magnesium'] = Variable<double>(magnesium);
    map['iron'] = Variable<double>(iron);
    map['zinc'] = Variable<double>(zinc);
    map['retinol'] = Variable<double>(retinol);
    map['vitamin_b1'] = Variable<double>(vitaminB1);
    map['vitamin_b2'] = Variable<double>(vitaminB2);
    map['vitamin_c'] = Variable<double>(vitaminC);
    map['dietary_fiber'] = Variable<double>(dietaryFiber);
    map['salt'] = Variable<double>(salt);
    map['is_heat'] = Variable<bool>(isHeat);
    map['is_allergy'] = Variable<bool>(isAllergy);
    if (!nullToAbsent || origin != null) {
      map['origin'] = Variable<String?>(origin);
    }
    return map;
  }

  FoodstuffsTableCompanion toCompanion(bool nullToAbsent) {
    return FoodstuffsTableCompanion(
      id: Value(id),
      name: Value(name),
      piece:
          piece == null && nullToAbsent ? const Value.absent() : Value(piece),
      gram: Value(gram),
      energy: Value(energy),
      protein: Value(protein),
      lipid: Value(lipid),
      sodium: Value(sodium),
      carbohydrate: Value(carbohydrate),
      calcium: Value(calcium),
      magnesium: Value(magnesium),
      iron: Value(iron),
      zinc: Value(zinc),
      retinol: Value(retinol),
      vitaminB1: Value(vitaminB1),
      vitaminB2: Value(vitaminB2),
      vitaminC: Value(vitaminC),
      dietaryFiber: Value(dietaryFiber),
      salt: Value(salt),
      isHeat: Value(isHeat),
      isAllergy: Value(isAllergy),
      origin:
          origin == null && nullToAbsent ? const Value.absent() : Value(origin),
    );
  }

  factory FoodstuffsSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodstuffsSchema(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      piece: serializer.fromJson<int?>(json['piece']),
      gram: serializer.fromJson<double>(json['gram']),
      energy: serializer.fromJson<double>(json['energy']),
      protein: serializer.fromJson<double>(json['protein']),
      lipid: serializer.fromJson<double>(json['lipid']),
      sodium: serializer.fromJson<double>(json['sodium']),
      carbohydrate: serializer.fromJson<double>(json['carbohydrate']),
      calcium: serializer.fromJson<double>(json['calcium']),
      magnesium: serializer.fromJson<double>(json['magnesium']),
      iron: serializer.fromJson<double>(json['iron']),
      zinc: serializer.fromJson<double>(json['zinc']),
      retinol: serializer.fromJson<double>(json['retinol']),
      vitaminB1: serializer.fromJson<double>(json['vitaminB1']),
      vitaminB2: serializer.fromJson<double>(json['vitaminB2']),
      vitaminC: serializer.fromJson<double>(json['vitaminC']),
      dietaryFiber: serializer.fromJson<double>(json['dietaryFiber']),
      salt: serializer.fromJson<double>(json['salt']),
      isHeat: serializer.fromJson<bool>(json['isHeat']),
      isAllergy: serializer.fromJson<bool>(json['isAllergy']),
      origin: serializer.fromJson<String?>(json['origin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'piece': serializer.toJson<int?>(piece),
      'gram': serializer.toJson<double>(gram),
      'energy': serializer.toJson<double>(energy),
      'protein': serializer.toJson<double>(protein),
      'lipid': serializer.toJson<double>(lipid),
      'sodium': serializer.toJson<double>(sodium),
      'carbohydrate': serializer.toJson<double>(carbohydrate),
      'calcium': serializer.toJson<double>(calcium),
      'magnesium': serializer.toJson<double>(magnesium),
      'iron': serializer.toJson<double>(iron),
      'zinc': serializer.toJson<double>(zinc),
      'retinol': serializer.toJson<double>(retinol),
      'vitaminB1': serializer.toJson<double>(vitaminB1),
      'vitaminB2': serializer.toJson<double>(vitaminB2),
      'vitaminC': serializer.toJson<double>(vitaminC),
      'dietaryFiber': serializer.toJson<double>(dietaryFiber),
      'salt': serializer.toJson<double>(salt),
      'isHeat': serializer.toJson<bool>(isHeat),
      'isAllergy': serializer.toJson<bool>(isAllergy),
      'origin': serializer.toJson<String?>(origin),
    };
  }

  FoodstuffsSchema copyWith(
          {int? id,
          String? name,
          int? piece,
          double? gram,
          double? energy,
          double? protein,
          double? lipid,
          double? sodium,
          double? carbohydrate,
          double? calcium,
          double? magnesium,
          double? iron,
          double? zinc,
          double? retinol,
          double? vitaminB1,
          double? vitaminB2,
          double? vitaminC,
          double? dietaryFiber,
          double? salt,
          bool? isHeat,
          bool? isAllergy,
          String? origin}) =>
      FoodstuffsSchema(
        id: id ?? this.id,
        name: name ?? this.name,
        piece: piece ?? this.piece,
        gram: gram ?? this.gram,
        energy: energy ?? this.energy,
        protein: protein ?? this.protein,
        lipid: lipid ?? this.lipid,
        sodium: sodium ?? this.sodium,
        carbohydrate: carbohydrate ?? this.carbohydrate,
        calcium: calcium ?? this.calcium,
        magnesium: magnesium ?? this.magnesium,
        iron: iron ?? this.iron,
        zinc: zinc ?? this.zinc,
        retinol: retinol ?? this.retinol,
        vitaminB1: vitaminB1 ?? this.vitaminB1,
        vitaminB2: vitaminB2 ?? this.vitaminB2,
        vitaminC: vitaminC ?? this.vitaminC,
        dietaryFiber: dietaryFiber ?? this.dietaryFiber,
        salt: salt ?? this.salt,
        isHeat: isHeat ?? this.isHeat,
        isAllergy: isAllergy ?? this.isAllergy,
        origin: origin ?? this.origin,
      );
  @override
  String toString() {
    return (StringBuffer('FoodstuffsSchema(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('piece: $piece, ')
          ..write('gram: $gram, ')
          ..write('energy: $energy, ')
          ..write('protein: $protein, ')
          ..write('lipid: $lipid, ')
          ..write('sodium: $sodium, ')
          ..write('carbohydrate: $carbohydrate, ')
          ..write('calcium: $calcium, ')
          ..write('magnesium: $magnesium, ')
          ..write('iron: $iron, ')
          ..write('zinc: $zinc, ')
          ..write('retinol: $retinol, ')
          ..write('vitaminB1: $vitaminB1, ')
          ..write('vitaminB2: $vitaminB2, ')
          ..write('vitaminC: $vitaminC, ')
          ..write('dietaryFiber: $dietaryFiber, ')
          ..write('salt: $salt, ')
          ..write('isHeat: $isHeat, ')
          ..write('isAllergy: $isAllergy, ')
          ..write('origin: $origin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        name,
        piece,
        gram,
        energy,
        protein,
        lipid,
        sodium,
        carbohydrate,
        calcium,
        magnesium,
        iron,
        zinc,
        retinol,
        vitaminB1,
        vitaminB2,
        vitaminC,
        dietaryFiber,
        salt,
        isHeat,
        isAllergy,
        origin
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodstuffsSchema &&
          other.id == this.id &&
          other.name == this.name &&
          other.piece == this.piece &&
          other.gram == this.gram &&
          other.energy == this.energy &&
          other.protein == this.protein &&
          other.lipid == this.lipid &&
          other.sodium == this.sodium &&
          other.carbohydrate == this.carbohydrate &&
          other.calcium == this.calcium &&
          other.magnesium == this.magnesium &&
          other.iron == this.iron &&
          other.zinc == this.zinc &&
          other.retinol == this.retinol &&
          other.vitaminB1 == this.vitaminB1 &&
          other.vitaminB2 == this.vitaminB2 &&
          other.vitaminC == this.vitaminC &&
          other.dietaryFiber == this.dietaryFiber &&
          other.salt == this.salt &&
          other.isHeat == this.isHeat &&
          other.isAllergy == this.isAllergy &&
          other.origin == this.origin);
}

class FoodstuffsTableCompanion extends UpdateCompanion<FoodstuffsSchema> {
  final Value<int> id;
  final Value<String> name;
  final Value<int?> piece;
  final Value<double> gram;
  final Value<double> energy;
  final Value<double> protein;
  final Value<double> lipid;
  final Value<double> sodium;
  final Value<double> carbohydrate;
  final Value<double> calcium;
  final Value<double> magnesium;
  final Value<double> iron;
  final Value<double> zinc;
  final Value<double> retinol;
  final Value<double> vitaminB1;
  final Value<double> vitaminB2;
  final Value<double> vitaminC;
  final Value<double> dietaryFiber;
  final Value<double> salt;
  final Value<bool> isHeat;
  final Value<bool> isAllergy;
  final Value<String?> origin;
  const FoodstuffsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.piece = const Value.absent(),
    this.gram = const Value.absent(),
    this.energy = const Value.absent(),
    this.protein = const Value.absent(),
    this.lipid = const Value.absent(),
    this.sodium = const Value.absent(),
    this.carbohydrate = const Value.absent(),
    this.calcium = const Value.absent(),
    this.magnesium = const Value.absent(),
    this.iron = const Value.absent(),
    this.zinc = const Value.absent(),
    this.retinol = const Value.absent(),
    this.vitaminB1 = const Value.absent(),
    this.vitaminB2 = const Value.absent(),
    this.vitaminC = const Value.absent(),
    this.dietaryFiber = const Value.absent(),
    this.salt = const Value.absent(),
    this.isHeat = const Value.absent(),
    this.isAllergy = const Value.absent(),
    this.origin = const Value.absent(),
  });
  FoodstuffsTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.piece = const Value.absent(),
    required double gram,
    required double energy,
    required double protein,
    required double lipid,
    required double sodium,
    required double carbohydrate,
    required double calcium,
    required double magnesium,
    required double iron,
    required double zinc,
    required double retinol,
    required double vitaminB1,
    required double vitaminB2,
    required double vitaminC,
    required double dietaryFiber,
    required double salt,
    required bool isHeat,
    required bool isAllergy,
    this.origin = const Value.absent(),
  })  : name = Value(name),
        gram = Value(gram),
        energy = Value(energy),
        protein = Value(protein),
        lipid = Value(lipid),
        sodium = Value(sodium),
        carbohydrate = Value(carbohydrate),
        calcium = Value(calcium),
        magnesium = Value(magnesium),
        iron = Value(iron),
        zinc = Value(zinc),
        retinol = Value(retinol),
        vitaminB1 = Value(vitaminB1),
        vitaminB2 = Value(vitaminB2),
        vitaminC = Value(vitaminC),
        dietaryFiber = Value(dietaryFiber),
        salt = Value(salt),
        isHeat = Value(isHeat),
        isAllergy = Value(isAllergy);
  static Insertable<FoodstuffsSchema> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int?>? piece,
    Expression<double>? gram,
    Expression<double>? energy,
    Expression<double>? protein,
    Expression<double>? lipid,
    Expression<double>? sodium,
    Expression<double>? carbohydrate,
    Expression<double>? calcium,
    Expression<double>? magnesium,
    Expression<double>? iron,
    Expression<double>? zinc,
    Expression<double>? retinol,
    Expression<double>? vitaminB1,
    Expression<double>? vitaminB2,
    Expression<double>? vitaminC,
    Expression<double>? dietaryFiber,
    Expression<double>? salt,
    Expression<bool>? isHeat,
    Expression<bool>? isAllergy,
    Expression<String?>? origin,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (piece != null) 'piece': piece,
      if (gram != null) 'gram': gram,
      if (energy != null) 'energy': energy,
      if (protein != null) 'protein': protein,
      if (lipid != null) 'lipid': lipid,
      if (sodium != null) 'sodium': sodium,
      if (carbohydrate != null) 'carbohydrate': carbohydrate,
      if (calcium != null) 'calcium': calcium,
      if (magnesium != null) 'magnesium': magnesium,
      if (iron != null) 'iron': iron,
      if (zinc != null) 'zinc': zinc,
      if (retinol != null) 'retinol': retinol,
      if (vitaminB1 != null) 'vitamin_b1': vitaminB1,
      if (vitaminB2 != null) 'vitamin_b2': vitaminB2,
      if (vitaminC != null) 'vitamin_c': vitaminC,
      if (dietaryFiber != null) 'dietary_fiber': dietaryFiber,
      if (salt != null) 'salt': salt,
      if (isHeat != null) 'is_heat': isHeat,
      if (isAllergy != null) 'is_allergy': isAllergy,
      if (origin != null) 'origin': origin,
    });
  }

  FoodstuffsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int?>? piece,
      Value<double>? gram,
      Value<double>? energy,
      Value<double>? protein,
      Value<double>? lipid,
      Value<double>? sodium,
      Value<double>? carbohydrate,
      Value<double>? calcium,
      Value<double>? magnesium,
      Value<double>? iron,
      Value<double>? zinc,
      Value<double>? retinol,
      Value<double>? vitaminB1,
      Value<double>? vitaminB2,
      Value<double>? vitaminC,
      Value<double>? dietaryFiber,
      Value<double>? salt,
      Value<bool>? isHeat,
      Value<bool>? isAllergy,
      Value<String?>? origin}) {
    return FoodstuffsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      piece: piece ?? this.piece,
      gram: gram ?? this.gram,
      energy: energy ?? this.energy,
      protein: protein ?? this.protein,
      lipid: lipid ?? this.lipid,
      sodium: sodium ?? this.sodium,
      carbohydrate: carbohydrate ?? this.carbohydrate,
      calcium: calcium ?? this.calcium,
      magnesium: magnesium ?? this.magnesium,
      iron: iron ?? this.iron,
      zinc: zinc ?? this.zinc,
      retinol: retinol ?? this.retinol,
      vitaminB1: vitaminB1 ?? this.vitaminB1,
      vitaminB2: vitaminB2 ?? this.vitaminB2,
      vitaminC: vitaminC ?? this.vitaminC,
      dietaryFiber: dietaryFiber ?? this.dietaryFiber,
      salt: salt ?? this.salt,
      isHeat: isHeat ?? this.isHeat,
      isAllergy: isAllergy ?? this.isAllergy,
      origin: origin ?? this.origin,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (piece.present) {
      map['piece'] = Variable<int?>(piece.value);
    }
    if (gram.present) {
      map['gram'] = Variable<double>(gram.value);
    }
    if (energy.present) {
      map['energy'] = Variable<double>(energy.value);
    }
    if (protein.present) {
      map['protein'] = Variable<double>(protein.value);
    }
    if (lipid.present) {
      map['lipid'] = Variable<double>(lipid.value);
    }
    if (sodium.present) {
      map['sodium'] = Variable<double>(sodium.value);
    }
    if (carbohydrate.present) {
      map['carbohydrate'] = Variable<double>(carbohydrate.value);
    }
    if (calcium.present) {
      map['calcium'] = Variable<double>(calcium.value);
    }
    if (magnesium.present) {
      map['magnesium'] = Variable<double>(magnesium.value);
    }
    if (iron.present) {
      map['iron'] = Variable<double>(iron.value);
    }
    if (zinc.present) {
      map['zinc'] = Variable<double>(zinc.value);
    }
    if (retinol.present) {
      map['retinol'] = Variable<double>(retinol.value);
    }
    if (vitaminB1.present) {
      map['vitamin_b1'] = Variable<double>(vitaminB1.value);
    }
    if (vitaminB2.present) {
      map['vitamin_b2'] = Variable<double>(vitaminB2.value);
    }
    if (vitaminC.present) {
      map['vitamin_c'] = Variable<double>(vitaminC.value);
    }
    if (dietaryFiber.present) {
      map['dietary_fiber'] = Variable<double>(dietaryFiber.value);
    }
    if (salt.present) {
      map['salt'] = Variable<double>(salt.value);
    }
    if (isHeat.present) {
      map['is_heat'] = Variable<bool>(isHeat.value);
    }
    if (isAllergy.present) {
      map['is_allergy'] = Variable<bool>(isAllergy.value);
    }
    if (origin.present) {
      map['origin'] = Variable<String?>(origin.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodstuffsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('piece: $piece, ')
          ..write('gram: $gram, ')
          ..write('energy: $energy, ')
          ..write('protein: $protein, ')
          ..write('lipid: $lipid, ')
          ..write('sodium: $sodium, ')
          ..write('carbohydrate: $carbohydrate, ')
          ..write('calcium: $calcium, ')
          ..write('magnesium: $magnesium, ')
          ..write('iron: $iron, ')
          ..write('zinc: $zinc, ')
          ..write('retinol: $retinol, ')
          ..write('vitaminB1: $vitaminB1, ')
          ..write('vitaminB2: $vitaminB2, ')
          ..write('vitaminC: $vitaminC, ')
          ..write('dietaryFiber: $dietaryFiber, ')
          ..write('salt: $salt, ')
          ..write('isHeat: $isHeat, ')
          ..write('isAllergy: $isAllergy, ')
          ..write('origin: $origin')
          ..write(')'))
        .toString();
  }
}

class $FoodstuffsTableTable extends FoodstuffsTable
    with TableInfo<$FoodstuffsTableTable, FoodstuffsSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodstuffsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _pieceMeta = const VerificationMeta('piece');
  @override
  late final GeneratedColumn<int?> piece = GeneratedColumn<int?>(
      'piece', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _gramMeta = const VerificationMeta('gram');
  @override
  late final GeneratedColumn<double?> gram = GeneratedColumn<double?>(
      'gram', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _energyMeta = const VerificationMeta('energy');
  @override
  late final GeneratedColumn<double?> energy = GeneratedColumn<double?>(
      'energy', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _proteinMeta = const VerificationMeta('protein');
  @override
  late final GeneratedColumn<double?> protein = GeneratedColumn<double?>(
      'protein', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _lipidMeta = const VerificationMeta('lipid');
  @override
  late final GeneratedColumn<double?> lipid = GeneratedColumn<double?>(
      'lipid', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _sodiumMeta = const VerificationMeta('sodium');
  @override
  late final GeneratedColumn<double?> sodium = GeneratedColumn<double?>(
      'sodium', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _carbohydrateMeta =
      const VerificationMeta('carbohydrate');
  @override
  late final GeneratedColumn<double?> carbohydrate = GeneratedColumn<double?>(
      'carbohydrate', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _calciumMeta = const VerificationMeta('calcium');
  @override
  late final GeneratedColumn<double?> calcium = GeneratedColumn<double?>(
      'calcium', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _magnesiumMeta = const VerificationMeta('magnesium');
  @override
  late final GeneratedColumn<double?> magnesium = GeneratedColumn<double?>(
      'magnesium', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _ironMeta = const VerificationMeta('iron');
  @override
  late final GeneratedColumn<double?> iron = GeneratedColumn<double?>(
      'iron', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _zincMeta = const VerificationMeta('zinc');
  @override
  late final GeneratedColumn<double?> zinc = GeneratedColumn<double?>(
      'zinc', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _retinolMeta = const VerificationMeta('retinol');
  @override
  late final GeneratedColumn<double?> retinol = GeneratedColumn<double?>(
      'retinol', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _vitaminB1Meta = const VerificationMeta('vitaminB1');
  @override
  late final GeneratedColumn<double?> vitaminB1 = GeneratedColumn<double?>(
      'vitamin_b1', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _vitaminB2Meta = const VerificationMeta('vitaminB2');
  @override
  late final GeneratedColumn<double?> vitaminB2 = GeneratedColumn<double?>(
      'vitamin_b2', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _vitaminCMeta = const VerificationMeta('vitaminC');
  @override
  late final GeneratedColumn<double?> vitaminC = GeneratedColumn<double?>(
      'vitamin_c', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _dietaryFiberMeta =
      const VerificationMeta('dietaryFiber');
  @override
  late final GeneratedColumn<double?> dietaryFiber = GeneratedColumn<double?>(
      'dietary_fiber', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _saltMeta = const VerificationMeta('salt');
  @override
  late final GeneratedColumn<double?> salt = GeneratedColumn<double?>(
      'salt', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _isHeatMeta = const VerificationMeta('isHeat');
  @override
  late final GeneratedColumn<bool?> isHeat = GeneratedColumn<bool?>(
      'is_heat', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_heat IN (0, 1))');
  final VerificationMeta _isAllergyMeta = const VerificationMeta('isAllergy');
  @override
  late final GeneratedColumn<bool?> isAllergy = GeneratedColumn<bool?>(
      'is_allergy', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_allergy IN (0, 1))');
  final VerificationMeta _originMeta = const VerificationMeta('origin');
  @override
  late final GeneratedColumn<String?> origin = GeneratedColumn<String?>(
      'origin', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        piece,
        gram,
        energy,
        protein,
        lipid,
        sodium,
        carbohydrate,
        calcium,
        magnesium,
        iron,
        zinc,
        retinol,
        vitaminB1,
        vitaminB2,
        vitaminC,
        dietaryFiber,
        salt,
        isHeat,
        isAllergy,
        origin
      ];
  @override
  String get aliasedName => _alias ?? 'foodstuffs_table';
  @override
  String get actualTableName => 'foodstuffs_table';
  @override
  VerificationContext validateIntegrity(Insertable<FoodstuffsSchema> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('piece')) {
      context.handle(
          _pieceMeta, piece.isAcceptableOrUnknown(data['piece']!, _pieceMeta));
    }
    if (data.containsKey('gram')) {
      context.handle(
          _gramMeta, gram.isAcceptableOrUnknown(data['gram']!, _gramMeta));
    } else if (isInserting) {
      context.missing(_gramMeta);
    }
    if (data.containsKey('energy')) {
      context.handle(_energyMeta,
          energy.isAcceptableOrUnknown(data['energy']!, _energyMeta));
    } else if (isInserting) {
      context.missing(_energyMeta);
    }
    if (data.containsKey('protein')) {
      context.handle(_proteinMeta,
          protein.isAcceptableOrUnknown(data['protein']!, _proteinMeta));
    } else if (isInserting) {
      context.missing(_proteinMeta);
    }
    if (data.containsKey('lipid')) {
      context.handle(
          _lipidMeta, lipid.isAcceptableOrUnknown(data['lipid']!, _lipidMeta));
    } else if (isInserting) {
      context.missing(_lipidMeta);
    }
    if (data.containsKey('sodium')) {
      context.handle(_sodiumMeta,
          sodium.isAcceptableOrUnknown(data['sodium']!, _sodiumMeta));
    } else if (isInserting) {
      context.missing(_sodiumMeta);
    }
    if (data.containsKey('carbohydrate')) {
      context.handle(
          _carbohydrateMeta,
          carbohydrate.isAcceptableOrUnknown(
              data['carbohydrate']!, _carbohydrateMeta));
    } else if (isInserting) {
      context.missing(_carbohydrateMeta);
    }
    if (data.containsKey('calcium')) {
      context.handle(_calciumMeta,
          calcium.isAcceptableOrUnknown(data['calcium']!, _calciumMeta));
    } else if (isInserting) {
      context.missing(_calciumMeta);
    }
    if (data.containsKey('magnesium')) {
      context.handle(_magnesiumMeta,
          magnesium.isAcceptableOrUnknown(data['magnesium']!, _magnesiumMeta));
    } else if (isInserting) {
      context.missing(_magnesiumMeta);
    }
    if (data.containsKey('iron')) {
      context.handle(
          _ironMeta, iron.isAcceptableOrUnknown(data['iron']!, _ironMeta));
    } else if (isInserting) {
      context.missing(_ironMeta);
    }
    if (data.containsKey('zinc')) {
      context.handle(
          _zincMeta, zinc.isAcceptableOrUnknown(data['zinc']!, _zincMeta));
    } else if (isInserting) {
      context.missing(_zincMeta);
    }
    if (data.containsKey('retinol')) {
      context.handle(_retinolMeta,
          retinol.isAcceptableOrUnknown(data['retinol']!, _retinolMeta));
    } else if (isInserting) {
      context.missing(_retinolMeta);
    }
    if (data.containsKey('vitamin_b1')) {
      context.handle(_vitaminB1Meta,
          vitaminB1.isAcceptableOrUnknown(data['vitamin_b1']!, _vitaminB1Meta));
    } else if (isInserting) {
      context.missing(_vitaminB1Meta);
    }
    if (data.containsKey('vitamin_b2')) {
      context.handle(_vitaminB2Meta,
          vitaminB2.isAcceptableOrUnknown(data['vitamin_b2']!, _vitaminB2Meta));
    } else if (isInserting) {
      context.missing(_vitaminB2Meta);
    }
    if (data.containsKey('vitamin_c')) {
      context.handle(_vitaminCMeta,
          vitaminC.isAcceptableOrUnknown(data['vitamin_c']!, _vitaminCMeta));
    } else if (isInserting) {
      context.missing(_vitaminCMeta);
    }
    if (data.containsKey('dietary_fiber')) {
      context.handle(
          _dietaryFiberMeta,
          dietaryFiber.isAcceptableOrUnknown(
              data['dietary_fiber']!, _dietaryFiberMeta));
    } else if (isInserting) {
      context.missing(_dietaryFiberMeta);
    }
    if (data.containsKey('salt')) {
      context.handle(
          _saltMeta, salt.isAcceptableOrUnknown(data['salt']!, _saltMeta));
    } else if (isInserting) {
      context.missing(_saltMeta);
    }
    if (data.containsKey('is_heat')) {
      context.handle(_isHeatMeta,
          isHeat.isAcceptableOrUnknown(data['is_heat']!, _isHeatMeta));
    } else if (isInserting) {
      context.missing(_isHeatMeta);
    }
    if (data.containsKey('is_allergy')) {
      context.handle(_isAllergyMeta,
          isAllergy.isAcceptableOrUnknown(data['is_allergy']!, _isAllergyMeta));
    } else if (isInserting) {
      context.missing(_isAllergyMeta);
    }
    if (data.containsKey('origin')) {
      context.handle(_originMeta,
          origin.isAcceptableOrUnknown(data['origin']!, _originMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FoodstuffsSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FoodstuffsSchema.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FoodstuffsTableTable createAlias(String alias) {
    return $FoodstuffsTableTable(attachedDatabase, alias);
  }
}

class UsersSchema extends DataClass implements Insertable<UsersSchema> {
  final int id;
  final String name;
  final int schoolId;
  final int schoolYear;
  UsersSchema(
      {required this.id,
      required this.name,
      required this.schoolId,
      required this.schoolYear});
  factory UsersSchema.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UsersSchema(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      schoolId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}school_id'])!,
      schoolYear: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}school_year'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['school_id'] = Variable<int>(schoolId);
    map['school_year'] = Variable<int>(schoolYear);
    return map;
  }

  UsersTableCompanion toCompanion(bool nullToAbsent) {
    return UsersTableCompanion(
      id: Value(id),
      name: Value(name),
      schoolId: Value(schoolId),
      schoolYear: Value(schoolYear),
    );
  }

  factory UsersSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UsersSchema(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      schoolId: serializer.fromJson<int>(json['schoolId']),
      schoolYear: serializer.fromJson<int>(json['schoolYear']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'schoolId': serializer.toJson<int>(schoolId),
      'schoolYear': serializer.toJson<int>(schoolYear),
    };
  }

  UsersSchema copyWith(
          {int? id, String? name, int? schoolId, int? schoolYear}) =>
      UsersSchema(
        id: id ?? this.id,
        name: name ?? this.name,
        schoolId: schoolId ?? this.schoolId,
        schoolYear: schoolYear ?? this.schoolYear,
      );
  @override
  String toString() {
    return (StringBuffer('UsersSchema(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('schoolId: $schoolId, ')
          ..write('schoolYear: $schoolYear')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, schoolId, schoolYear);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UsersSchema &&
          other.id == this.id &&
          other.name == this.name &&
          other.schoolId == this.schoolId &&
          other.schoolYear == this.schoolYear);
}

class UsersTableCompanion extends UpdateCompanion<UsersSchema> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> schoolId;
  final Value<int> schoolYear;
  const UsersTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.schoolId = const Value.absent(),
    this.schoolYear = const Value.absent(),
  });
  UsersTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int schoolId,
    required int schoolYear,
  })  : name = Value(name),
        schoolId = Value(schoolId),
        schoolYear = Value(schoolYear);
  static Insertable<UsersSchema> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? schoolId,
    Expression<int>? schoolYear,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (schoolId != null) 'school_id': schoolId,
      if (schoolYear != null) 'school_year': schoolYear,
    });
  }

  UsersTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? schoolId,
      Value<int>? schoolYear}) {
    return UsersTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      schoolId: schoolId ?? this.schoolId,
      schoolYear: schoolYear ?? this.schoolYear,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (schoolId.present) {
      map['school_id'] = Variable<int>(schoolId.value);
    }
    if (schoolYear.present) {
      map['school_year'] = Variable<int>(schoolYear.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('schoolId: $schoolId, ')
          ..write('schoolYear: $schoolYear')
          ..write(')'))
        .toString();
  }
}

class $UsersTableTable extends UsersTable
    with TableInfo<$UsersTableTable, UsersSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _schoolIdMeta = const VerificationMeta('schoolId');
  @override
  late final GeneratedColumn<int?> schoolId = GeneratedColumn<int?>(
      'school_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _schoolYearMeta = const VerificationMeta('schoolYear');
  @override
  late final GeneratedColumn<int?> schoolYear = GeneratedColumn<int?>(
      'school_year', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, schoolId, schoolYear];
  @override
  String get aliasedName => _alias ?? 'users_table';
  @override
  String get actualTableName => 'users_table';
  @override
  VerificationContext validateIntegrity(Insertable<UsersSchema> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('school_id')) {
      context.handle(_schoolIdMeta,
          schoolId.isAcceptableOrUnknown(data['school_id']!, _schoolIdMeta));
    } else if (isInserting) {
      context.missing(_schoolIdMeta);
    }
    if (data.containsKey('school_year')) {
      context.handle(
          _schoolYearMeta,
          schoolYear.isAcceptableOrUnknown(
              data['school_year']!, _schoolYearMeta));
    } else if (isInserting) {
      context.missing(_schoolYearMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UsersSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UsersSchema.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UsersTableTable createAlias(String alias) {
    return $UsersTableTable(attachedDatabase, alias);
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SchoolsTableTable schoolsTable = $SchoolsTableTable(this);
  late final $MenusTableTable menusTable = $MenusTableTable(this);
  late final $MenuDishesTableTable menuDishesTable =
      $MenuDishesTableTable(this);
  late final $DishesTableTable dishesTable = $DishesTableTable(this);
  late final $DishFoodstuffsTableTable dishFoodstuffsTable =
      $DishFoodstuffsTableTable(this);
  late final $FoodstuffsTableTable foodstuffsTable =
      $FoodstuffsTableTable(this);
  late final $UsersTableTable usersTable = $UsersTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        schoolsTable,
        menusTable,
        menuDishesTable,
        dishesTable,
        dishFoodstuffsTable,
        foodstuffsTable,
        usersTable
      ];
}
