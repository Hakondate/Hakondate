// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// ignore_for_file: type=lint
class $SchoolsTableTable extends SchoolsTable
    with TableInfo<$SchoolsTableTable, SchoolsSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SchoolsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _parentIdMeta =
      const VerificationMeta('parentId');
  @override
  late final GeneratedColumn<int> parentId = GeneratedColumn<int>(
      'parent_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lunchBlockMeta =
      const VerificationMeta('lunchBlock');
  @override
  late final GeneratedColumn<int> lunchBlock = GeneratedColumn<int>(
      'lunch_block', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _classificationMeta =
      const VerificationMeta('classification');
  @override
  late final GeneratedColumn<String> classification = GeneratedColumn<String>(
      'classification', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createAtMeta =
      const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime> createAt = GeneratedColumn<DateTime>(
      'create_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _updateAtMeta =
      const VerificationMeta('updateAt');
  @override
  late final GeneratedColumn<DateTime> updateAt = GeneratedColumn<DateTime>(
      'update_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _authorizationRequiredMeta =
      const VerificationMeta('authorizationRequired');
  @override
  late final GeneratedColumn<bool> authorizationRequired =
      GeneratedColumn<bool>('authorization_required', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("authorization_required" IN (0, 1))'),
          defaultValue: const Constant(false));
  static const VerificationMeta _authorizationKeyUpdatedAtMeta =
      const VerificationMeta('authorizationKeyUpdatedAt');
  @override
  late final GeneratedColumn<DateTime> authorizationKeyUpdatedAt =
      GeneratedColumn<DateTime>(
          'authorization_key_updated_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        parentId,
        name,
        lunchBlock,
        classification,
        createAt,
        updateAt,
        authorizationRequired,
        authorizationKeyUpdatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'schools_table';
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
    } else if (isInserting) {
      context.missing(_lunchBlockMeta);
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
    if (data.containsKey('authorization_required')) {
      context.handle(
          _authorizationRequiredMeta,
          authorizationRequired.isAcceptableOrUnknown(
              data['authorization_required']!, _authorizationRequiredMeta));
    }
    if (data.containsKey('authorization_key_updated_at')) {
      context.handle(
          _authorizationKeyUpdatedAtMeta,
          authorizationKeyUpdatedAt.isAcceptableOrUnknown(
              data['authorization_key_updated_at']!,
              _authorizationKeyUpdatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SchoolsSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SchoolsSchema(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      parentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}parent_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      lunchBlock: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}lunch_block'])!,
      classification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}classification'])!,
      createAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}create_at'])!,
      updateAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}update_at'])!,
      authorizationRequired: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}authorization_required'])!,
      authorizationKeyUpdatedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}authorization_key_updated_at']),
    );
  }

  @override
  $SchoolsTableTable createAlias(String alias) {
    return $SchoolsTableTable(attachedDatabase, alias);
  }
}

class SchoolsSchema extends DataClass implements Insertable<SchoolsSchema> {
  final int id;
  final int parentId;
  final String name;
  final int lunchBlock;
  final String classification;
  final DateTime createAt;
  final DateTime updateAt;
  final bool authorizationRequired;
  final DateTime? authorizationKeyUpdatedAt;
  const SchoolsSchema(
      {required this.id,
      required this.parentId,
      required this.name,
      required this.lunchBlock,
      required this.classification,
      required this.createAt,
      required this.updateAt,
      required this.authorizationRequired,
      this.authorizationKeyUpdatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['parent_id'] = Variable<int>(parentId);
    map['name'] = Variable<String>(name);
    map['lunch_block'] = Variable<int>(lunchBlock);
    map['classification'] = Variable<String>(classification);
    map['create_at'] = Variable<DateTime>(createAt);
    map['update_at'] = Variable<DateTime>(updateAt);
    map['authorization_required'] = Variable<bool>(authorizationRequired);
    if (!nullToAbsent || authorizationKeyUpdatedAt != null) {
      map['authorization_key_updated_at'] =
          Variable<DateTime>(authorizationKeyUpdatedAt);
    }
    return map;
  }

  SchoolsTableCompanion toCompanion(bool nullToAbsent) {
    return SchoolsTableCompanion(
      id: Value(id),
      parentId: Value(parentId),
      name: Value(name),
      lunchBlock: Value(lunchBlock),
      classification: Value(classification),
      createAt: Value(createAt),
      updateAt: Value(updateAt),
      authorizationRequired: Value(authorizationRequired),
      authorizationKeyUpdatedAt:
          authorizationKeyUpdatedAt == null && nullToAbsent
              ? const Value.absent()
              : Value(authorizationKeyUpdatedAt),
    );
  }

  factory SchoolsSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SchoolsSchema(
      id: serializer.fromJson<int>(json['id']),
      parentId: serializer.fromJson<int>(json['parentId']),
      name: serializer.fromJson<String>(json['name']),
      lunchBlock: serializer.fromJson<int>(json['lunchBlock']),
      classification: serializer.fromJson<String>(json['classification']),
      createAt: serializer.fromJson<DateTime>(json['createAt']),
      updateAt: serializer.fromJson<DateTime>(json['updateAt']),
      authorizationRequired:
          serializer.fromJson<bool>(json['authorizationRequired']),
      authorizationKeyUpdatedAt:
          serializer.fromJson<DateTime?>(json['authorizationKeyUpdatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'parentId': serializer.toJson<int>(parentId),
      'name': serializer.toJson<String>(name),
      'lunchBlock': serializer.toJson<int>(lunchBlock),
      'classification': serializer.toJson<String>(classification),
      'createAt': serializer.toJson<DateTime>(createAt),
      'updateAt': serializer.toJson<DateTime>(updateAt),
      'authorizationRequired': serializer.toJson<bool>(authorizationRequired),
      'authorizationKeyUpdatedAt':
          serializer.toJson<DateTime?>(authorizationKeyUpdatedAt),
    };
  }

  SchoolsSchema copyWith(
          {int? id,
          int? parentId,
          String? name,
          int? lunchBlock,
          String? classification,
          DateTime? createAt,
          DateTime? updateAt,
          bool? authorizationRequired,
          Value<DateTime?> authorizationKeyUpdatedAt = const Value.absent()}) =>
      SchoolsSchema(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        name: name ?? this.name,
        lunchBlock: lunchBlock ?? this.lunchBlock,
        classification: classification ?? this.classification,
        createAt: createAt ?? this.createAt,
        updateAt: updateAt ?? this.updateAt,
        authorizationRequired:
            authorizationRequired ?? this.authorizationRequired,
        authorizationKeyUpdatedAt: authorizationKeyUpdatedAt.present
            ? authorizationKeyUpdatedAt.value
            : this.authorizationKeyUpdatedAt,
      );
  SchoolsSchema copyWithCompanion(SchoolsTableCompanion data) {
    return SchoolsSchema(
      id: data.id.present ? data.id.value : this.id,
      parentId: data.parentId.present ? data.parentId.value : this.parentId,
      name: data.name.present ? data.name.value : this.name,
      lunchBlock:
          data.lunchBlock.present ? data.lunchBlock.value : this.lunchBlock,
      classification: data.classification.present
          ? data.classification.value
          : this.classification,
      createAt: data.createAt.present ? data.createAt.value : this.createAt,
      updateAt: data.updateAt.present ? data.updateAt.value : this.updateAt,
      authorizationRequired: data.authorizationRequired.present
          ? data.authorizationRequired.value
          : this.authorizationRequired,
      authorizationKeyUpdatedAt: data.authorizationKeyUpdatedAt.present
          ? data.authorizationKeyUpdatedAt.value
          : this.authorizationKeyUpdatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SchoolsSchema(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('name: $name, ')
          ..write('lunchBlock: $lunchBlock, ')
          ..write('classification: $classification, ')
          ..write('createAt: $createAt, ')
          ..write('updateAt: $updateAt, ')
          ..write('authorizationRequired: $authorizationRequired, ')
          ..write('authorizationKeyUpdatedAt: $authorizationKeyUpdatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      parentId,
      name,
      lunchBlock,
      classification,
      createAt,
      updateAt,
      authorizationRequired,
      authorizationKeyUpdatedAt);
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
          other.updateAt == this.updateAt &&
          other.authorizationRequired == this.authorizationRequired &&
          other.authorizationKeyUpdatedAt == this.authorizationKeyUpdatedAt);
}

class SchoolsTableCompanion extends UpdateCompanion<SchoolsSchema> {
  final Value<int> id;
  final Value<int> parentId;
  final Value<String> name;
  final Value<int> lunchBlock;
  final Value<String> classification;
  final Value<DateTime> createAt;
  final Value<DateTime> updateAt;
  final Value<bool> authorizationRequired;
  final Value<DateTime?> authorizationKeyUpdatedAt;
  const SchoolsTableCompanion({
    this.id = const Value.absent(),
    this.parentId = const Value.absent(),
    this.name = const Value.absent(),
    this.lunchBlock = const Value.absent(),
    this.classification = const Value.absent(),
    this.createAt = const Value.absent(),
    this.updateAt = const Value.absent(),
    this.authorizationRequired = const Value.absent(),
    this.authorizationKeyUpdatedAt = const Value.absent(),
  });
  SchoolsTableCompanion.insert({
    this.id = const Value.absent(),
    required int parentId,
    required String name,
    required int lunchBlock,
    required String classification,
    this.createAt = const Value.absent(),
    this.updateAt = const Value.absent(),
    this.authorizationRequired = const Value.absent(),
    this.authorizationKeyUpdatedAt = const Value.absent(),
  })  : parentId = Value(parentId),
        name = Value(name),
        lunchBlock = Value(lunchBlock),
        classification = Value(classification);
  static Insertable<SchoolsSchema> custom({
    Expression<int>? id,
    Expression<int>? parentId,
    Expression<String>? name,
    Expression<int>? lunchBlock,
    Expression<String>? classification,
    Expression<DateTime>? createAt,
    Expression<DateTime>? updateAt,
    Expression<bool>? authorizationRequired,
    Expression<DateTime>? authorizationKeyUpdatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (parentId != null) 'parent_id': parentId,
      if (name != null) 'name': name,
      if (lunchBlock != null) 'lunch_block': lunchBlock,
      if (classification != null) 'classification': classification,
      if (createAt != null) 'create_at': createAt,
      if (updateAt != null) 'update_at': updateAt,
      if (authorizationRequired != null)
        'authorization_required': authorizationRequired,
      if (authorizationKeyUpdatedAt != null)
        'authorization_key_updated_at': authorizationKeyUpdatedAt,
    });
  }

  SchoolsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? parentId,
      Value<String>? name,
      Value<int>? lunchBlock,
      Value<String>? classification,
      Value<DateTime>? createAt,
      Value<DateTime>? updateAt,
      Value<bool>? authorizationRequired,
      Value<DateTime?>? authorizationKeyUpdatedAt}) {
    return SchoolsTableCompanion(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      name: name ?? this.name,
      lunchBlock: lunchBlock ?? this.lunchBlock,
      classification: classification ?? this.classification,
      createAt: createAt ?? this.createAt,
      updateAt: updateAt ?? this.updateAt,
      authorizationRequired:
          authorizationRequired ?? this.authorizationRequired,
      authorizationKeyUpdatedAt:
          authorizationKeyUpdatedAt ?? this.authorizationKeyUpdatedAt,
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
      map['lunch_block'] = Variable<int>(lunchBlock.value);
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
    if (authorizationRequired.present) {
      map['authorization_required'] =
          Variable<bool>(authorizationRequired.value);
    }
    if (authorizationKeyUpdatedAt.present) {
      map['authorization_key_updated_at'] =
          Variable<DateTime>(authorizationKeyUpdatedAt.value);
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
          ..write('updateAt: $updateAt, ')
          ..write('authorizationRequired: $authorizationRequired, ')
          ..write('authorizationKeyUpdatedAt: $authorizationKeyUpdatedAt')
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
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _dayMeta = const VerificationMeta('day');
  @override
  late final GeneratedColumn<DateTime> day = GeneratedColumn<DateTime>(
      'day', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _schoolIdMeta =
      const VerificationMeta('schoolId');
  @override
  late final GeneratedColumn<int> schoolId = GeneratedColumn<int>(
      'school_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES schools_table (id)'));
  static const VerificationMeta _eventMeta = const VerificationMeta('event');
  @override
  late final GeneratedColumn<String> event = GeneratedColumn<String>(
      'event', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createAtMeta =
      const VerificationMeta('createAt');
  @override
  late final GeneratedColumn<DateTime> createAt = GeneratedColumn<DateTime>(
      'create_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _updateAtMeta =
      const VerificationMeta('updateAt');
  @override
  late final GeneratedColumn<DateTime> updateAt = GeneratedColumn<DateTime>(
      'update_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  @override
  List<GeneratedColumn> get $columns =>
      [id, day, schoolId, event, createAt, updateAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'menus_table';
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
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MenusSchema(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      day: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}day'])!,
      schoolId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}school_id'])!,
      event: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}event']),
      createAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}create_at'])!,
      updateAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}update_at'])!,
    );
  }

  @override
  $MenusTableTable createAlias(String alias) {
    return $MenusTableTable(attachedDatabase, alias);
  }
}

class MenusSchema extends DataClass implements Insertable<MenusSchema> {
  final int id;
  final DateTime day;
  final int schoolId;
  final String? event;
  final DateTime createAt;
  final DateTime updateAt;
  const MenusSchema(
      {required this.id,
      required this.day,
      required this.schoolId,
      this.event,
      required this.createAt,
      required this.updateAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['day'] = Variable<DateTime>(day);
    map['school_id'] = Variable<int>(schoolId);
    if (!nullToAbsent || event != null) {
      map['event'] = Variable<String>(event);
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
          Value<String?> event = const Value.absent(),
          DateTime? createAt,
          DateTime? updateAt}) =>
      MenusSchema(
        id: id ?? this.id,
        day: day ?? this.day,
        schoolId: schoolId ?? this.schoolId,
        event: event.present ? event.value : this.event,
        createAt: createAt ?? this.createAt,
        updateAt: updateAt ?? this.updateAt,
      );
  MenusSchema copyWithCompanion(MenusTableCompanion data) {
    return MenusSchema(
      id: data.id.present ? data.id.value : this.id,
      day: data.day.present ? data.day.value : this.day,
      schoolId: data.schoolId.present ? data.schoolId.value : this.schoolId,
      event: data.event.present ? data.event.value : this.event,
      createAt: data.createAt.present ? data.createAt.value : this.createAt,
      updateAt: data.updateAt.present ? data.updateAt.value : this.updateAt,
    );
  }

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
    Expression<String>? event,
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
      map['event'] = Variable<String>(event.value);
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

class $DishesTableTable extends DishesTable
    with TableInfo<$DishesTableTable, DishesSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DishesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, category];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dishes_table';
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
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DishesSchema(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
    );
  }

  @override
  $DishesTableTable createAlias(String alias) {
    return $DishesTableTable(attachedDatabase, alias);
  }
}

class DishesSchema extends DataClass implements Insertable<DishesSchema> {
  final int id;
  final String name;
  final String? category;
  const DishesSchema({required this.id, required this.name, this.category});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
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

  DishesSchema copyWith(
          {int? id,
          String? name,
          Value<String?> category = const Value.absent()}) =>
      DishesSchema(
        id: id ?? this.id,
        name: name ?? this.name,
        category: category.present ? category.value : this.category,
      );
  DishesSchema copyWithCompanion(DishesTableCompanion data) {
    return DishesSchema(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      category: data.category.present ? data.category.value : this.category,
    );
  }

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
    Expression<String>? category,
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
      map['category'] = Variable<String>(category.value);
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

class $MenuDishesTableTable extends MenuDishesTable
    with TableInfo<$MenuDishesTableTable, MenuDishesSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MenuDishesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _menuIdMeta = const VerificationMeta('menuId');
  @override
  late final GeneratedColumn<int> menuId = GeneratedColumn<int>(
      'menu_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES menus_table (id)'));
  static const VerificationMeta _dishIdMeta = const VerificationMeta('dishId');
  @override
  late final GeneratedColumn<int> dishId = GeneratedColumn<int>(
      'dish_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES dishes_table (id)'));
  @override
  List<GeneratedColumn> get $columns => [menuId, dishId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'menu_dishes_table';
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
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {menuId, dishId},
      ];
  @override
  MenuDishesSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MenuDishesSchema(
      menuId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}menu_id'])!,
      dishId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dish_id'])!,
    );
  }

  @override
  $MenuDishesTableTable createAlias(String alias) {
    return $MenuDishesTableTable(attachedDatabase, alias);
  }
}

class MenuDishesSchema extends DataClass
    implements Insertable<MenuDishesSchema> {
  final int menuId;
  final int dishId;
  const MenuDishesSchema({required this.menuId, required this.dishId});
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
  MenuDishesSchema copyWithCompanion(MenuDishesTableCompanion data) {
    return MenuDishesSchema(
      menuId: data.menuId.present ? data.menuId.value : this.menuId,
      dishId: data.dishId.present ? data.dishId.value : this.dishId,
    );
  }

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
  final Value<int> rowid;
  const MenuDishesTableCompanion({
    this.menuId = const Value.absent(),
    this.dishId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MenuDishesTableCompanion.insert({
    required int menuId,
    required int dishId,
    this.rowid = const Value.absent(),
  })  : menuId = Value(menuId),
        dishId = Value(dishId);
  static Insertable<MenuDishesSchema> custom({
    Expression<int>? menuId,
    Expression<int>? dishId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (menuId != null) 'menu_id': menuId,
      if (dishId != null) 'dish_id': dishId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MenuDishesTableCompanion copyWith(
      {Value<int>? menuId, Value<int>? dishId, Value<int>? rowid}) {
    return MenuDishesTableCompanion(
      menuId: menuId ?? this.menuId,
      dishId: dishId ?? this.dishId,
      rowid: rowid ?? this.rowid,
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MenuDishesTableCompanion(')
          ..write('menuId: $menuId, ')
          ..write('dishId: $dishId, ')
          ..write('rowid: $rowid')
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
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pieceNumberMeta =
      const VerificationMeta('pieceNumber');
  @override
  late final GeneratedColumn<double> pieceNumber = GeneratedColumn<double>(
      'piece_number', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _pieceUnitMeta =
      const VerificationMeta('pieceUnit');
  @override
  late final GeneratedColumn<String> pieceUnit = GeneratedColumn<String>(
      'piece_unit', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gramMeta = const VerificationMeta('gram');
  @override
  late final GeneratedColumn<double> gram = GeneratedColumn<double>(
      'gram', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _energyMeta = const VerificationMeta('energy');
  @override
  late final GeneratedColumn<double> energy = GeneratedColumn<double>(
      'energy', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _proteinMeta =
      const VerificationMeta('protein');
  @override
  late final GeneratedColumn<double> protein = GeneratedColumn<double>(
      'protein', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _lipidMeta = const VerificationMeta('lipid');
  @override
  late final GeneratedColumn<double> lipid = GeneratedColumn<double>(
      'lipid', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _sodiumMeta = const VerificationMeta('sodium');
  @override
  late final GeneratedColumn<double> sodium = GeneratedColumn<double>(
      'sodium', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _carbohydrateMeta =
      const VerificationMeta('carbohydrate');
  @override
  late final GeneratedColumn<double> carbohydrate = GeneratedColumn<double>(
      'carbohydrate', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _calciumMeta =
      const VerificationMeta('calcium');
  @override
  late final GeneratedColumn<double> calcium = GeneratedColumn<double>(
      'calcium', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _magnesiumMeta =
      const VerificationMeta('magnesium');
  @override
  late final GeneratedColumn<double> magnesium = GeneratedColumn<double>(
      'magnesium', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _ironMeta = const VerificationMeta('iron');
  @override
  late final GeneratedColumn<double> iron = GeneratedColumn<double>(
      'iron', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _zincMeta = const VerificationMeta('zinc');
  @override
  late final GeneratedColumn<double> zinc = GeneratedColumn<double>(
      'zinc', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _retinolMeta =
      const VerificationMeta('retinol');
  @override
  late final GeneratedColumn<double> retinol = GeneratedColumn<double>(
      'retinol', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _vitaminB1Meta =
      const VerificationMeta('vitaminB1');
  @override
  late final GeneratedColumn<double> vitaminB1 = GeneratedColumn<double>(
      'vitamin_b1', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _vitaminB2Meta =
      const VerificationMeta('vitaminB2');
  @override
  late final GeneratedColumn<double> vitaminB2 = GeneratedColumn<double>(
      'vitamin_b2', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _vitaminCMeta =
      const VerificationMeta('vitaminC');
  @override
  late final GeneratedColumn<double> vitaminC = GeneratedColumn<double>(
      'vitamin_c', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dietaryFiberMeta =
      const VerificationMeta('dietaryFiber');
  @override
  late final GeneratedColumn<double> dietaryFiber = GeneratedColumn<double>(
      'dietary_fiber', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _saltMeta = const VerificationMeta('salt');
  @override
  late final GeneratedColumn<double> salt = GeneratedColumn<double>(
      'salt', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _isHeatMeta = const VerificationMeta('isHeat');
  @override
  late final GeneratedColumn<bool> isHeat = GeneratedColumn<bool>(
      'is_heat', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_heat" IN (0, 1))'));
  static const VerificationMeta _isAllergyMeta =
      const VerificationMeta('isAllergy');
  @override
  late final GeneratedColumn<bool> isAllergy = GeneratedColumn<bool>(
      'is_allergy', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_allergy" IN (0, 1))'));
  static const VerificationMeta _originMeta = const VerificationMeta('origin');
  @override
  late final GeneratedColumn<String> origin = GeneratedColumn<String>(
      'origin', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        pieceNumber,
        pieceUnit,
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
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'foodstuffs_table';
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
    if (data.containsKey('piece_number')) {
      context.handle(
          _pieceNumberMeta,
          pieceNumber.isAcceptableOrUnknown(
              data['piece_number']!, _pieceNumberMeta));
    }
    if (data.containsKey('piece_unit')) {
      context.handle(_pieceUnitMeta,
          pieceUnit.isAcceptableOrUnknown(data['piece_unit']!, _pieceUnitMeta));
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
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {name, gram, isHeat, isAllergy},
      ];
  @override
  FoodstuffsSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodstuffsSchema(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      pieceNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}piece_number']),
      pieceUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}piece_unit']),
      gram: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}gram'])!,
      energy: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}energy'])!,
      protein: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}protein'])!,
      lipid: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}lipid'])!,
      sodium: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sodium'])!,
      carbohydrate: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}carbohydrate'])!,
      calcium: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}calcium'])!,
      magnesium: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}magnesium'])!,
      iron: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}iron'])!,
      zinc: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}zinc'])!,
      retinol: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}retinol'])!,
      vitaminB1: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}vitamin_b1'])!,
      vitaminB2: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}vitamin_b2'])!,
      vitaminC: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}vitamin_c'])!,
      dietaryFiber: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}dietary_fiber'])!,
      salt: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}salt'])!,
      isHeat: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_heat'])!,
      isAllergy: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_allergy'])!,
      origin: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}origin']),
    );
  }

  @override
  $FoodstuffsTableTable createAlias(String alias) {
    return $FoodstuffsTableTable(attachedDatabase, alias);
  }
}

class FoodstuffsSchema extends DataClass
    implements Insertable<FoodstuffsSchema> {
  final int id;
  final String name;
  final double? pieceNumber;
  final String? pieceUnit;
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
  const FoodstuffsSchema(
      {required this.id,
      required this.name,
      this.pieceNumber,
      this.pieceUnit,
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
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || pieceNumber != null) {
      map['piece_number'] = Variable<double>(pieceNumber);
    }
    if (!nullToAbsent || pieceUnit != null) {
      map['piece_unit'] = Variable<String>(pieceUnit);
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
      map['origin'] = Variable<String>(origin);
    }
    return map;
  }

  FoodstuffsTableCompanion toCompanion(bool nullToAbsent) {
    return FoodstuffsTableCompanion(
      id: Value(id),
      name: Value(name),
      pieceNumber: pieceNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(pieceNumber),
      pieceUnit: pieceUnit == null && nullToAbsent
          ? const Value.absent()
          : Value(pieceUnit),
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
      pieceNumber: serializer.fromJson<double?>(json['pieceNumber']),
      pieceUnit: serializer.fromJson<String?>(json['pieceUnit']),
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
      'pieceNumber': serializer.toJson<double?>(pieceNumber),
      'pieceUnit': serializer.toJson<String?>(pieceUnit),
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
          Value<double?> pieceNumber = const Value.absent(),
          Value<String?> pieceUnit = const Value.absent(),
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
          Value<String?> origin = const Value.absent()}) =>
      FoodstuffsSchema(
        id: id ?? this.id,
        name: name ?? this.name,
        pieceNumber: pieceNumber.present ? pieceNumber.value : this.pieceNumber,
        pieceUnit: pieceUnit.present ? pieceUnit.value : this.pieceUnit,
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
        origin: origin.present ? origin.value : this.origin,
      );
  FoodstuffsSchema copyWithCompanion(FoodstuffsTableCompanion data) {
    return FoodstuffsSchema(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      pieceNumber:
          data.pieceNumber.present ? data.pieceNumber.value : this.pieceNumber,
      pieceUnit: data.pieceUnit.present ? data.pieceUnit.value : this.pieceUnit,
      gram: data.gram.present ? data.gram.value : this.gram,
      energy: data.energy.present ? data.energy.value : this.energy,
      protein: data.protein.present ? data.protein.value : this.protein,
      lipid: data.lipid.present ? data.lipid.value : this.lipid,
      sodium: data.sodium.present ? data.sodium.value : this.sodium,
      carbohydrate: data.carbohydrate.present
          ? data.carbohydrate.value
          : this.carbohydrate,
      calcium: data.calcium.present ? data.calcium.value : this.calcium,
      magnesium: data.magnesium.present ? data.magnesium.value : this.magnesium,
      iron: data.iron.present ? data.iron.value : this.iron,
      zinc: data.zinc.present ? data.zinc.value : this.zinc,
      retinol: data.retinol.present ? data.retinol.value : this.retinol,
      vitaminB1: data.vitaminB1.present ? data.vitaminB1.value : this.vitaminB1,
      vitaminB2: data.vitaminB2.present ? data.vitaminB2.value : this.vitaminB2,
      vitaminC: data.vitaminC.present ? data.vitaminC.value : this.vitaminC,
      dietaryFiber: data.dietaryFiber.present
          ? data.dietaryFiber.value
          : this.dietaryFiber,
      salt: data.salt.present ? data.salt.value : this.salt,
      isHeat: data.isHeat.present ? data.isHeat.value : this.isHeat,
      isAllergy: data.isAllergy.present ? data.isAllergy.value : this.isAllergy,
      origin: data.origin.present ? data.origin.value : this.origin,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FoodstuffsSchema(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('pieceNumber: $pieceNumber, ')
          ..write('pieceUnit: $pieceUnit, ')
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
        pieceNumber,
        pieceUnit,
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
          other.pieceNumber == this.pieceNumber &&
          other.pieceUnit == this.pieceUnit &&
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
  final Value<double?> pieceNumber;
  final Value<String?> pieceUnit;
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
    this.pieceNumber = const Value.absent(),
    this.pieceUnit = const Value.absent(),
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
    this.pieceNumber = const Value.absent(),
    this.pieceUnit = const Value.absent(),
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
    Expression<double>? pieceNumber,
    Expression<String>? pieceUnit,
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
    Expression<String>? origin,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (pieceNumber != null) 'piece_number': pieceNumber,
      if (pieceUnit != null) 'piece_unit': pieceUnit,
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
      Value<double?>? pieceNumber,
      Value<String?>? pieceUnit,
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
      pieceNumber: pieceNumber ?? this.pieceNumber,
      pieceUnit: pieceUnit ?? this.pieceUnit,
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
    if (pieceNumber.present) {
      map['piece_number'] = Variable<double>(pieceNumber.value);
    }
    if (pieceUnit.present) {
      map['piece_unit'] = Variable<String>(pieceUnit.value);
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
      map['origin'] = Variable<String>(origin.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodstuffsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('pieceNumber: $pieceNumber, ')
          ..write('pieceUnit: $pieceUnit, ')
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

class $DishFoodstuffsTableTable extends DishFoodstuffsTable
    with TableInfo<$DishFoodstuffsTableTable, DishFoodstuffsSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DishFoodstuffsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dishIdMeta = const VerificationMeta('dishId');
  @override
  late final GeneratedColumn<int> dishId = GeneratedColumn<int>(
      'dish_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES dishes_table (id)'));
  static const VerificationMeta _foodstuffIdMeta =
      const VerificationMeta('foodstuffId');
  @override
  late final GeneratedColumn<int> foodstuffId = GeneratedColumn<int>(
      'foodstuff_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES foodstuffs_table (id)'));
  @override
  List<GeneratedColumn> get $columns => [dishId, foodstuffId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dish_foodstuffs_table';
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
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DishFoodstuffsSchema(
      dishId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dish_id'])!,
      foodstuffId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}foodstuff_id'])!,
    );
  }

  @override
  $DishFoodstuffsTableTable createAlias(String alias) {
    return $DishFoodstuffsTableTable(attachedDatabase, alias);
  }
}

class DishFoodstuffsSchema extends DataClass
    implements Insertable<DishFoodstuffsSchema> {
  final int dishId;
  final int foodstuffId;
  const DishFoodstuffsSchema({required this.dishId, required this.foodstuffId});
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
  DishFoodstuffsSchema copyWithCompanion(DishFoodstuffsTableCompanion data) {
    return DishFoodstuffsSchema(
      dishId: data.dishId.present ? data.dishId.value : this.dishId,
      foodstuffId:
          data.foodstuffId.present ? data.foodstuffId.value : this.foodstuffId,
    );
  }

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
  final Value<int> rowid;
  const DishFoodstuffsTableCompanion({
    this.dishId = const Value.absent(),
    this.foodstuffId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DishFoodstuffsTableCompanion.insert({
    required int dishId,
    required int foodstuffId,
    this.rowid = const Value.absent(),
  })  : dishId = Value(dishId),
        foodstuffId = Value(foodstuffId);
  static Insertable<DishFoodstuffsSchema> custom({
    Expression<int>? dishId,
    Expression<int>? foodstuffId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (dishId != null) 'dish_id': dishId,
      if (foodstuffId != null) 'foodstuff_id': foodstuffId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DishFoodstuffsTableCompanion copyWith(
      {Value<int>? dishId, Value<int>? foodstuffId, Value<int>? rowid}) {
    return DishFoodstuffsTableCompanion(
      dishId: dishId ?? this.dishId,
      foodstuffId: foodstuffId ?? this.foodstuffId,
      rowid: rowid ?? this.rowid,
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DishFoodstuffsTableCompanion(')
          ..write('dishId: $dishId, ')
          ..write('foodstuffId: $foodstuffId, ')
          ..write('rowid: $rowid')
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
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _schoolIdMeta =
      const VerificationMeta('schoolId');
  @override
  late final GeneratedColumn<int> schoolId = GeneratedColumn<int>(
      'school_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES schools_table (id)'));
  static const VerificationMeta _schoolYearMeta =
      const VerificationMeta('schoolYear');
  @override
  late final GeneratedColumn<int> schoolYear = GeneratedColumn<int>(
      'school_year', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _authorizedAtMeta =
      const VerificationMeta('authorizedAt');
  @override
  late final GeneratedColumn<DateTime> authorizedAt = GeneratedColumn<DateTime>(
      'authorized_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, schoolId, schoolYear, authorizedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users_table';
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
    if (data.containsKey('authorized_at')) {
      context.handle(
          _authorizedAtMeta,
          authorizedAt.isAcceptableOrUnknown(
              data['authorized_at']!, _authorizedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UsersSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UsersSchema(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      schoolId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}school_id'])!,
      schoolYear: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}school_year'])!,
      authorizedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}authorized_at']),
    );
  }

  @override
  $UsersTableTable createAlias(String alias) {
    return $UsersTableTable(attachedDatabase, alias);
  }
}

class UsersSchema extends DataClass implements Insertable<UsersSchema> {
  final int id;
  final String name;
  final int schoolId;
  final int schoolYear;
  final DateTime? authorizedAt;
  const UsersSchema(
      {required this.id,
      required this.name,
      required this.schoolId,
      required this.schoolYear,
      this.authorizedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['school_id'] = Variable<int>(schoolId);
    map['school_year'] = Variable<int>(schoolYear);
    if (!nullToAbsent || authorizedAt != null) {
      map['authorized_at'] = Variable<DateTime>(authorizedAt);
    }
    return map;
  }

  UsersTableCompanion toCompanion(bool nullToAbsent) {
    return UsersTableCompanion(
      id: Value(id),
      name: Value(name),
      schoolId: Value(schoolId),
      schoolYear: Value(schoolYear),
      authorizedAt: authorizedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(authorizedAt),
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
      authorizedAt: serializer.fromJson<DateTime?>(json['authorizedAt']),
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
      'authorizedAt': serializer.toJson<DateTime?>(authorizedAt),
    };
  }

  UsersSchema copyWith(
          {int? id,
          String? name,
          int? schoolId,
          int? schoolYear,
          Value<DateTime?> authorizedAt = const Value.absent()}) =>
      UsersSchema(
        id: id ?? this.id,
        name: name ?? this.name,
        schoolId: schoolId ?? this.schoolId,
        schoolYear: schoolYear ?? this.schoolYear,
        authorizedAt:
            authorizedAt.present ? authorizedAt.value : this.authorizedAt,
      );
  UsersSchema copyWithCompanion(UsersTableCompanion data) {
    return UsersSchema(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      schoolId: data.schoolId.present ? data.schoolId.value : this.schoolId,
      schoolYear:
          data.schoolYear.present ? data.schoolYear.value : this.schoolYear,
      authorizedAt: data.authorizedAt.present
          ? data.authorizedAt.value
          : this.authorizedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UsersSchema(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('schoolId: $schoolId, ')
          ..write('schoolYear: $schoolYear, ')
          ..write('authorizedAt: $authorizedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, schoolId, schoolYear, authorizedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UsersSchema &&
          other.id == this.id &&
          other.name == this.name &&
          other.schoolId == this.schoolId &&
          other.schoolYear == this.schoolYear &&
          other.authorizedAt == this.authorizedAt);
}

class UsersTableCompanion extends UpdateCompanion<UsersSchema> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> schoolId;
  final Value<int> schoolYear;
  final Value<DateTime?> authorizedAt;
  const UsersTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.schoolId = const Value.absent(),
    this.schoolYear = const Value.absent(),
    this.authorizedAt = const Value.absent(),
  });
  UsersTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int schoolId,
    required int schoolYear,
    this.authorizedAt = const Value.absent(),
  })  : name = Value(name),
        schoolId = Value(schoolId),
        schoolYear = Value(schoolYear);
  static Insertable<UsersSchema> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? schoolId,
    Expression<int>? schoolYear,
    Expression<DateTime>? authorizedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (schoolId != null) 'school_id': schoolId,
      if (schoolYear != null) 'school_year': schoolYear,
      if (authorizedAt != null) 'authorized_at': authorizedAt,
    });
  }

  UsersTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? schoolId,
      Value<int>? schoolYear,
      Value<DateTime?>? authorizedAt}) {
    return UsersTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      schoolId: schoolId ?? this.schoolId,
      schoolYear: schoolYear ?? this.schoolYear,
      authorizedAt: authorizedAt ?? this.authorizedAt,
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
    if (authorizedAt.present) {
      map['authorized_at'] = Variable<DateTime>(authorizedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('schoolId: $schoolId, ')
          ..write('schoolYear: $schoolYear, ')
          ..write('authorizedAt: $authorizedAt')
          ..write(')'))
        .toString();
  }
}

class $DictionaryItemsTableTable extends DictionaryItemsTable
    with TableInfo<$DictionaryItemsTableTable, DictionaryItemsSchema> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DictionaryItemsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _groupMeta = const VerificationMeta('group');
  @override
  late final GeneratedColumn<int> group = GeneratedColumn<int>(
      'group', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _energyMeta = const VerificationMeta('energy');
  @override
  late final GeneratedColumn<double> energy = GeneratedColumn<double>(
      'energy', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _proteinMeta =
      const VerificationMeta('protein');
  @override
  late final GeneratedColumn<double> protein = GeneratedColumn<double>(
      'protein', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _lipidMeta = const VerificationMeta('lipid');
  @override
  late final GeneratedColumn<double> lipid = GeneratedColumn<double>(
      'lipid', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _sodiumMeta = const VerificationMeta('sodium');
  @override
  late final GeneratedColumn<double> sodium = GeneratedColumn<double>(
      'sodium', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _carbohydrateMeta =
      const VerificationMeta('carbohydrate');
  @override
  late final GeneratedColumn<double> carbohydrate = GeneratedColumn<double>(
      'carbohydrate', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _calciumMeta =
      const VerificationMeta('calcium');
  @override
  late final GeneratedColumn<double> calcium = GeneratedColumn<double>(
      'calcium', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _magnesiumMeta =
      const VerificationMeta('magnesium');
  @override
  late final GeneratedColumn<double> magnesium = GeneratedColumn<double>(
      'magnesium', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _ironMeta = const VerificationMeta('iron');
  @override
  late final GeneratedColumn<double> iron = GeneratedColumn<double>(
      'iron', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _zincMeta = const VerificationMeta('zinc');
  @override
  late final GeneratedColumn<double> zinc = GeneratedColumn<double>(
      'zinc', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _retinolMeta =
      const VerificationMeta('retinol');
  @override
  late final GeneratedColumn<double> retinol = GeneratedColumn<double>(
      'retinol', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _vitaminB1Meta =
      const VerificationMeta('vitaminB1');
  @override
  late final GeneratedColumn<double> vitaminB1 = GeneratedColumn<double>(
      'vitamin_b1', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _vitaminB2Meta =
      const VerificationMeta('vitaminB2');
  @override
  late final GeneratedColumn<double> vitaminB2 = GeneratedColumn<double>(
      'vitamin_b2', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _vitaminCMeta =
      const VerificationMeta('vitaminC');
  @override
  late final GeneratedColumn<double> vitaminC = GeneratedColumn<double>(
      'vitamin_c', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dietaryFiberMeta =
      const VerificationMeta('dietaryFiber');
  @override
  late final GeneratedColumn<double> dietaryFiber = GeneratedColumn<double>(
      'dietary_fiber', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _saltMeta = const VerificationMeta('salt');
  @override
  late final GeneratedColumn<double> salt = GeneratedColumn<double>(
      'salt', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        group,
        name,
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
        note
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dictionary_items_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DictionaryItemsSchema> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('group')) {
      context.handle(
          _groupMeta, group.isAcceptableOrUnknown(data['group']!, _groupMeta));
    } else if (isInserting) {
      context.missing(_groupMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
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
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DictionaryItemsSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DictionaryItemsSchema(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      group: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}group'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      energy: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}energy'])!,
      protein: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}protein'])!,
      lipid: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}lipid'])!,
      sodium: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sodium'])!,
      carbohydrate: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}carbohydrate'])!,
      calcium: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}calcium'])!,
      magnesium: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}magnesium'])!,
      iron: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}iron'])!,
      zinc: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}zinc'])!,
      retinol: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}retinol'])!,
      vitaminB1: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}vitamin_b1'])!,
      vitaminB2: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}vitamin_b2'])!,
      vitaminC: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}vitamin_c'])!,
      dietaryFiber: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}dietary_fiber'])!,
      salt: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}salt'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
    );
  }

  @override
  $DictionaryItemsTableTable createAlias(String alias) {
    return $DictionaryItemsTableTable(attachedDatabase, alias);
  }
}

class DictionaryItemsSchema extends DataClass
    implements Insertable<DictionaryItemsSchema> {
  final int id;
  final int group;
  final String name;
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
  final String? note;
  const DictionaryItemsSchema(
      {required this.id,
      required this.group,
      required this.name,
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
      this.note});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['group'] = Variable<int>(group);
    map['name'] = Variable<String>(name);
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
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    return map;
  }

  DictionaryItemsTableCompanion toCompanion(bool nullToAbsent) {
    return DictionaryItemsTableCompanion(
      id: Value(id),
      group: Value(group),
      name: Value(name),
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
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
    );
  }

  factory DictionaryItemsSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DictionaryItemsSchema(
      id: serializer.fromJson<int>(json['id']),
      group: serializer.fromJson<int>(json['group']),
      name: serializer.fromJson<String>(json['name']),
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
      note: serializer.fromJson<String?>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'group': serializer.toJson<int>(group),
      'name': serializer.toJson<String>(name),
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
      'note': serializer.toJson<String?>(note),
    };
  }

  DictionaryItemsSchema copyWith(
          {int? id,
          int? group,
          String? name,
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
          Value<String?> note = const Value.absent()}) =>
      DictionaryItemsSchema(
        id: id ?? this.id,
        group: group ?? this.group,
        name: name ?? this.name,
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
        note: note.present ? note.value : this.note,
      );
  DictionaryItemsSchema copyWithCompanion(DictionaryItemsTableCompanion data) {
    return DictionaryItemsSchema(
      id: data.id.present ? data.id.value : this.id,
      group: data.group.present ? data.group.value : this.group,
      name: data.name.present ? data.name.value : this.name,
      energy: data.energy.present ? data.energy.value : this.energy,
      protein: data.protein.present ? data.protein.value : this.protein,
      lipid: data.lipid.present ? data.lipid.value : this.lipid,
      sodium: data.sodium.present ? data.sodium.value : this.sodium,
      carbohydrate: data.carbohydrate.present
          ? data.carbohydrate.value
          : this.carbohydrate,
      calcium: data.calcium.present ? data.calcium.value : this.calcium,
      magnesium: data.magnesium.present ? data.magnesium.value : this.magnesium,
      iron: data.iron.present ? data.iron.value : this.iron,
      zinc: data.zinc.present ? data.zinc.value : this.zinc,
      retinol: data.retinol.present ? data.retinol.value : this.retinol,
      vitaminB1: data.vitaminB1.present ? data.vitaminB1.value : this.vitaminB1,
      vitaminB2: data.vitaminB2.present ? data.vitaminB2.value : this.vitaminB2,
      vitaminC: data.vitaminC.present ? data.vitaminC.value : this.vitaminC,
      dietaryFiber: data.dietaryFiber.present
          ? data.dietaryFiber.value
          : this.dietaryFiber,
      salt: data.salt.present ? data.salt.value : this.salt,
      note: data.note.present ? data.note.value : this.note,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DictionaryItemsSchema(')
          ..write('id: $id, ')
          ..write('group: $group, ')
          ..write('name: $name, ')
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
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      group,
      name,
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
      note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DictionaryItemsSchema &&
          other.id == this.id &&
          other.group == this.group &&
          other.name == this.name &&
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
          other.note == this.note);
}

class DictionaryItemsTableCompanion
    extends UpdateCompanion<DictionaryItemsSchema> {
  final Value<int> id;
  final Value<int> group;
  final Value<String> name;
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
  final Value<String?> note;
  const DictionaryItemsTableCompanion({
    this.id = const Value.absent(),
    this.group = const Value.absent(),
    this.name = const Value.absent(),
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
    this.note = const Value.absent(),
  });
  DictionaryItemsTableCompanion.insert({
    this.id = const Value.absent(),
    required int group,
    required String name,
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
    this.note = const Value.absent(),
  })  : group = Value(group),
        name = Value(name),
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
        salt = Value(salt);
  static Insertable<DictionaryItemsSchema> custom({
    Expression<int>? id,
    Expression<int>? group,
    Expression<String>? name,
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
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (group != null) 'group': group,
      if (name != null) 'name': name,
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
      if (note != null) 'note': note,
    });
  }

  DictionaryItemsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? group,
      Value<String>? name,
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
      Value<String?>? note}) {
    return DictionaryItemsTableCompanion(
      id: id ?? this.id,
      group: group ?? this.group,
      name: name ?? this.name,
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
      note: note ?? this.note,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (group.present) {
      map['group'] = Variable<int>(group.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
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
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DictionaryItemsTableCompanion(')
          ..write('id: $id, ')
          ..write('group: $group, ')
          ..write('name: $name, ')
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
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  $LocalDatabaseManager get managers => $LocalDatabaseManager(this);
  late final $SchoolsTableTable schoolsTable = $SchoolsTableTable(this);
  late final $MenusTableTable menusTable = $MenusTableTable(this);
  late final $DishesTableTable dishesTable = $DishesTableTable(this);
  late final $MenuDishesTableTable menuDishesTable =
      $MenuDishesTableTable(this);
  late final $FoodstuffsTableTable foodstuffsTable =
      $FoodstuffsTableTable(this);
  late final $DishFoodstuffsTableTable dishFoodstuffsTable =
      $DishFoodstuffsTableTable(this);
  late final $UsersTableTable usersTable = $UsersTableTable(this);
  late final $DictionaryItemsTableTable dictionaryItemsTable =
      $DictionaryItemsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        schoolsTable,
        menusTable,
        dishesTable,
        menuDishesTable,
        foodstuffsTable,
        dishFoodstuffsTable,
        usersTable,
        dictionaryItemsTable
      ];
}

typedef $$SchoolsTableTableCreateCompanionBuilder = SchoolsTableCompanion
    Function({
  Value<int> id,
  required int parentId,
  required String name,
  required int lunchBlock,
  required String classification,
  Value<DateTime> createAt,
  Value<DateTime> updateAt,
  Value<bool> authorizationRequired,
  Value<DateTime?> authorizationKeyUpdatedAt,
});
typedef $$SchoolsTableTableUpdateCompanionBuilder = SchoolsTableCompanion
    Function({
  Value<int> id,
  Value<int> parentId,
  Value<String> name,
  Value<int> lunchBlock,
  Value<String> classification,
  Value<DateTime> createAt,
  Value<DateTime> updateAt,
  Value<bool> authorizationRequired,
  Value<DateTime?> authorizationKeyUpdatedAt,
});

class $$SchoolsTableTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $SchoolsTableTable,
    SchoolsSchema,
    $$SchoolsTableTableFilterComposer,
    $$SchoolsTableTableOrderingComposer,
    $$SchoolsTableTableCreateCompanionBuilder,
    $$SchoolsTableTableUpdateCompanionBuilder> {
  $$SchoolsTableTableTableManager(_$LocalDatabase db, $SchoolsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SchoolsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SchoolsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> parentId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> lunchBlock = const Value.absent(),
            Value<String> classification = const Value.absent(),
            Value<DateTime> createAt = const Value.absent(),
            Value<DateTime> updateAt = const Value.absent(),
            Value<bool> authorizationRequired = const Value.absent(),
            Value<DateTime?> authorizationKeyUpdatedAt = const Value.absent(),
          }) =>
              SchoolsTableCompanion(
            id: id,
            parentId: parentId,
            name: name,
            lunchBlock: lunchBlock,
            classification: classification,
            createAt: createAt,
            updateAt: updateAt,
            authorizationRequired: authorizationRequired,
            authorizationKeyUpdatedAt: authorizationKeyUpdatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int parentId,
            required String name,
            required int lunchBlock,
            required String classification,
            Value<DateTime> createAt = const Value.absent(),
            Value<DateTime> updateAt = const Value.absent(),
            Value<bool> authorizationRequired = const Value.absent(),
            Value<DateTime?> authorizationKeyUpdatedAt = const Value.absent(),
          }) =>
              SchoolsTableCompanion.insert(
            id: id,
            parentId: parentId,
            name: name,
            lunchBlock: lunchBlock,
            classification: classification,
            createAt: createAt,
            updateAt: updateAt,
            authorizationRequired: authorizationRequired,
            authorizationKeyUpdatedAt: authorizationKeyUpdatedAt,
          ),
        ));
}

class $$SchoolsTableTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $SchoolsTableTable> {
  $$SchoolsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get parentId => $state.composableBuilder(
      column: $state.table.parentId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get lunchBlock => $state.composableBuilder(
      column: $state.table.lunchBlock,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get classification => $state.composableBuilder(
      column: $state.table.classification,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createAt => $state.composableBuilder(
      column: $state.table.createAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get updateAt => $state.composableBuilder(
      column: $state.table.updateAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get authorizationRequired => $state.composableBuilder(
      column: $state.table.authorizationRequired,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get authorizationKeyUpdatedAt => $state
      .composableBuilder(
          column: $state.table.authorizationKeyUpdatedAt,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter menusTableRefs(
      ComposableFilter Function($$MenusTableTableFilterComposer f) f) {
    final $$MenusTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.menusTable,
        getReferencedColumn: (t) => t.schoolId,
        builder: (joinBuilder, parentComposers) =>
            $$MenusTableTableFilterComposer(ComposerState($state.db,
                $state.db.menusTable, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter usersTableRefs(
      ComposableFilter Function($$UsersTableTableFilterComposer f) f) {
    final $$UsersTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.usersTable,
        getReferencedColumn: (t) => t.schoolId,
        builder: (joinBuilder, parentComposers) =>
            $$UsersTableTableFilterComposer(ComposerState($state.db,
                $state.db.usersTable, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$SchoolsTableTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $SchoolsTableTable> {
  $$SchoolsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get parentId => $state.composableBuilder(
      column: $state.table.parentId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get lunchBlock => $state.composableBuilder(
      column: $state.table.lunchBlock,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get classification => $state.composableBuilder(
      column: $state.table.classification,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createAt => $state.composableBuilder(
      column: $state.table.createAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get updateAt => $state.composableBuilder(
      column: $state.table.updateAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get authorizationRequired => $state.composableBuilder(
      column: $state.table.authorizationRequired,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get authorizationKeyUpdatedAt =>
      $state.composableBuilder(
          column: $state.table.authorizationKeyUpdatedAt,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$MenusTableTableCreateCompanionBuilder = MenusTableCompanion Function({
  Value<int> id,
  required DateTime day,
  required int schoolId,
  Value<String?> event,
  Value<DateTime> createAt,
  Value<DateTime> updateAt,
});
typedef $$MenusTableTableUpdateCompanionBuilder = MenusTableCompanion Function({
  Value<int> id,
  Value<DateTime> day,
  Value<int> schoolId,
  Value<String?> event,
  Value<DateTime> createAt,
  Value<DateTime> updateAt,
});

class $$MenusTableTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $MenusTableTable,
    MenusSchema,
    $$MenusTableTableFilterComposer,
    $$MenusTableTableOrderingComposer,
    $$MenusTableTableCreateCompanionBuilder,
    $$MenusTableTableUpdateCompanionBuilder> {
  $$MenusTableTableTableManager(_$LocalDatabase db, $MenusTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$MenusTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$MenusTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<DateTime> day = const Value.absent(),
            Value<int> schoolId = const Value.absent(),
            Value<String?> event = const Value.absent(),
            Value<DateTime> createAt = const Value.absent(),
            Value<DateTime> updateAt = const Value.absent(),
          }) =>
              MenusTableCompanion(
            id: id,
            day: day,
            schoolId: schoolId,
            event: event,
            createAt: createAt,
            updateAt: updateAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required DateTime day,
            required int schoolId,
            Value<String?> event = const Value.absent(),
            Value<DateTime> createAt = const Value.absent(),
            Value<DateTime> updateAt = const Value.absent(),
          }) =>
              MenusTableCompanion.insert(
            id: id,
            day: day,
            schoolId: schoolId,
            event: event,
            createAt: createAt,
            updateAt: updateAt,
          ),
        ));
}

class $$MenusTableTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $MenusTableTable> {
  $$MenusTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get day => $state.composableBuilder(
      column: $state.table.day,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get event => $state.composableBuilder(
      column: $state.table.event,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createAt => $state.composableBuilder(
      column: $state.table.createAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get updateAt => $state.composableBuilder(
      column: $state.table.updateAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$SchoolsTableTableFilterComposer get schoolId {
    final $$SchoolsTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.schoolId,
        referencedTable: $state.db.schoolsTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$SchoolsTableTableFilterComposer(ComposerState($state.db,
                $state.db.schoolsTable, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter menuDishesTableRefs(
      ComposableFilter Function($$MenuDishesTableTableFilterComposer f) f) {
    final $$MenuDishesTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $state.db.menuDishesTable,
            getReferencedColumn: (t) => t.menuId,
            builder: (joinBuilder, parentComposers) =>
                $$MenuDishesTableTableFilterComposer(ComposerState($state.db,
                    $state.db.menuDishesTable, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$MenusTableTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $MenusTableTable> {
  $$MenusTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get day => $state.composableBuilder(
      column: $state.table.day,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get event => $state.composableBuilder(
      column: $state.table.event,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createAt => $state.composableBuilder(
      column: $state.table.createAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get updateAt => $state.composableBuilder(
      column: $state.table.updateAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$SchoolsTableTableOrderingComposer get schoolId {
    final $$SchoolsTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.schoolId,
        referencedTable: $state.db.schoolsTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$SchoolsTableTableOrderingComposer(ComposerState($state.db,
                $state.db.schoolsTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$DishesTableTableCreateCompanionBuilder = DishesTableCompanion
    Function({
  Value<int> id,
  required String name,
  Value<String?> category,
});
typedef $$DishesTableTableUpdateCompanionBuilder = DishesTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String?> category,
});

class $$DishesTableTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $DishesTableTable,
    DishesSchema,
    $$DishesTableTableFilterComposer,
    $$DishesTableTableOrderingComposer,
    $$DishesTableTableCreateCompanionBuilder,
    $$DishesTableTableUpdateCompanionBuilder> {
  $$DishesTableTableTableManager(_$LocalDatabase db, $DishesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DishesTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DishesTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> category = const Value.absent(),
          }) =>
              DishesTableCompanion(
            id: id,
            name: name,
            category: category,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<String?> category = const Value.absent(),
          }) =>
              DishesTableCompanion.insert(
            id: id,
            name: name,
            category: category,
          ),
        ));
}

class $$DishesTableTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $DishesTableTable> {
  $$DishesTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter menuDishesTableRefs(
      ComposableFilter Function($$MenuDishesTableTableFilterComposer f) f) {
    final $$MenuDishesTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $state.db.menuDishesTable,
            getReferencedColumn: (t) => t.dishId,
            builder: (joinBuilder, parentComposers) =>
                $$MenuDishesTableTableFilterComposer(ComposerState($state.db,
                    $state.db.menuDishesTable, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter dishFoodstuffsTableRefs(
      ComposableFilter Function($$DishFoodstuffsTableTableFilterComposer f) f) {
    final $$DishFoodstuffsTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $state.db.dishFoodstuffsTable,
            getReferencedColumn: (t) => t.dishId,
            builder: (joinBuilder, parentComposers) =>
                $$DishFoodstuffsTableTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.dishFoodstuffsTable,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }
}

class $$DishesTableTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $DishesTableTable> {
  $$DishesTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$MenuDishesTableTableCreateCompanionBuilder = MenuDishesTableCompanion
    Function({
  required int menuId,
  required int dishId,
  Value<int> rowid,
});
typedef $$MenuDishesTableTableUpdateCompanionBuilder = MenuDishesTableCompanion
    Function({
  Value<int> menuId,
  Value<int> dishId,
  Value<int> rowid,
});

class $$MenuDishesTableTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $MenuDishesTableTable,
    MenuDishesSchema,
    $$MenuDishesTableTableFilterComposer,
    $$MenuDishesTableTableOrderingComposer,
    $$MenuDishesTableTableCreateCompanionBuilder,
    $$MenuDishesTableTableUpdateCompanionBuilder> {
  $$MenuDishesTableTableTableManager(
      _$LocalDatabase db, $MenuDishesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$MenuDishesTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$MenuDishesTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> menuId = const Value.absent(),
            Value<int> dishId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MenuDishesTableCompanion(
            menuId: menuId,
            dishId: dishId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int menuId,
            required int dishId,
            Value<int> rowid = const Value.absent(),
          }) =>
              MenuDishesTableCompanion.insert(
            menuId: menuId,
            dishId: dishId,
            rowid: rowid,
          ),
        ));
}

class $$MenuDishesTableTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $MenuDishesTableTable> {
  $$MenuDishesTableTableFilterComposer(super.$state);
  $$MenusTableTableFilterComposer get menuId {
    final $$MenusTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.menuId,
        referencedTable: $state.db.menusTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$MenusTableTableFilterComposer(ComposerState($state.db,
                $state.db.menusTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$DishesTableTableFilterComposer get dishId {
    final $$DishesTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dishId,
        referencedTable: $state.db.dishesTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$DishesTableTableFilterComposer(ComposerState($state.db,
                $state.db.dishesTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$MenuDishesTableTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $MenuDishesTableTable> {
  $$MenuDishesTableTableOrderingComposer(super.$state);
  $$MenusTableTableOrderingComposer get menuId {
    final $$MenusTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.menuId,
        referencedTable: $state.db.menusTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$MenusTableTableOrderingComposer(ComposerState($state.db,
                $state.db.menusTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$DishesTableTableOrderingComposer get dishId {
    final $$DishesTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dishId,
        referencedTable: $state.db.dishesTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$DishesTableTableOrderingComposer(ComposerState($state.db,
                $state.db.dishesTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$FoodstuffsTableTableCreateCompanionBuilder = FoodstuffsTableCompanion
    Function({
  Value<int> id,
  required String name,
  Value<double?> pieceNumber,
  Value<String?> pieceUnit,
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
  Value<String?> origin,
});
typedef $$FoodstuffsTableTableUpdateCompanionBuilder = FoodstuffsTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<double?> pieceNumber,
  Value<String?> pieceUnit,
  Value<double> gram,
  Value<double> energy,
  Value<double> protein,
  Value<double> lipid,
  Value<double> sodium,
  Value<double> carbohydrate,
  Value<double> calcium,
  Value<double> magnesium,
  Value<double> iron,
  Value<double> zinc,
  Value<double> retinol,
  Value<double> vitaminB1,
  Value<double> vitaminB2,
  Value<double> vitaminC,
  Value<double> dietaryFiber,
  Value<double> salt,
  Value<bool> isHeat,
  Value<bool> isAllergy,
  Value<String?> origin,
});

class $$FoodstuffsTableTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $FoodstuffsTableTable,
    FoodstuffsSchema,
    $$FoodstuffsTableTableFilterComposer,
    $$FoodstuffsTableTableOrderingComposer,
    $$FoodstuffsTableTableCreateCompanionBuilder,
    $$FoodstuffsTableTableUpdateCompanionBuilder> {
  $$FoodstuffsTableTableTableManager(
      _$LocalDatabase db, $FoodstuffsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$FoodstuffsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$FoodstuffsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<double?> pieceNumber = const Value.absent(),
            Value<String?> pieceUnit = const Value.absent(),
            Value<double> gram = const Value.absent(),
            Value<double> energy = const Value.absent(),
            Value<double> protein = const Value.absent(),
            Value<double> lipid = const Value.absent(),
            Value<double> sodium = const Value.absent(),
            Value<double> carbohydrate = const Value.absent(),
            Value<double> calcium = const Value.absent(),
            Value<double> magnesium = const Value.absent(),
            Value<double> iron = const Value.absent(),
            Value<double> zinc = const Value.absent(),
            Value<double> retinol = const Value.absent(),
            Value<double> vitaminB1 = const Value.absent(),
            Value<double> vitaminB2 = const Value.absent(),
            Value<double> vitaminC = const Value.absent(),
            Value<double> dietaryFiber = const Value.absent(),
            Value<double> salt = const Value.absent(),
            Value<bool> isHeat = const Value.absent(),
            Value<bool> isAllergy = const Value.absent(),
            Value<String?> origin = const Value.absent(),
          }) =>
              FoodstuffsTableCompanion(
            id: id,
            name: name,
            pieceNumber: pieceNumber,
            pieceUnit: pieceUnit,
            gram: gram,
            energy: energy,
            protein: protein,
            lipid: lipid,
            sodium: sodium,
            carbohydrate: carbohydrate,
            calcium: calcium,
            magnesium: magnesium,
            iron: iron,
            zinc: zinc,
            retinol: retinol,
            vitaminB1: vitaminB1,
            vitaminB2: vitaminB2,
            vitaminC: vitaminC,
            dietaryFiber: dietaryFiber,
            salt: salt,
            isHeat: isHeat,
            isAllergy: isAllergy,
            origin: origin,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<double?> pieceNumber = const Value.absent(),
            Value<String?> pieceUnit = const Value.absent(),
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
            Value<String?> origin = const Value.absent(),
          }) =>
              FoodstuffsTableCompanion.insert(
            id: id,
            name: name,
            pieceNumber: pieceNumber,
            pieceUnit: pieceUnit,
            gram: gram,
            energy: energy,
            protein: protein,
            lipid: lipid,
            sodium: sodium,
            carbohydrate: carbohydrate,
            calcium: calcium,
            magnesium: magnesium,
            iron: iron,
            zinc: zinc,
            retinol: retinol,
            vitaminB1: vitaminB1,
            vitaminB2: vitaminB2,
            vitaminC: vitaminC,
            dietaryFiber: dietaryFiber,
            salt: salt,
            isHeat: isHeat,
            isAllergy: isAllergy,
            origin: origin,
          ),
        ));
}

class $$FoodstuffsTableTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $FoodstuffsTableTable> {
  $$FoodstuffsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get pieceNumber => $state.composableBuilder(
      column: $state.table.pieceNumber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pieceUnit => $state.composableBuilder(
      column: $state.table.pieceUnit,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get gram => $state.composableBuilder(
      column: $state.table.gram,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get energy => $state.composableBuilder(
      column: $state.table.energy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get protein => $state.composableBuilder(
      column: $state.table.protein,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get lipid => $state.composableBuilder(
      column: $state.table.lipid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get sodium => $state.composableBuilder(
      column: $state.table.sodium,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get carbohydrate => $state.composableBuilder(
      column: $state.table.carbohydrate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get calcium => $state.composableBuilder(
      column: $state.table.calcium,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get magnesium => $state.composableBuilder(
      column: $state.table.magnesium,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get iron => $state.composableBuilder(
      column: $state.table.iron,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get zinc => $state.composableBuilder(
      column: $state.table.zinc,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get retinol => $state.composableBuilder(
      column: $state.table.retinol,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get vitaminB1 => $state.composableBuilder(
      column: $state.table.vitaminB1,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get vitaminB2 => $state.composableBuilder(
      column: $state.table.vitaminB2,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get vitaminC => $state.composableBuilder(
      column: $state.table.vitaminC,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get dietaryFiber => $state.composableBuilder(
      column: $state.table.dietaryFiber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get salt => $state.composableBuilder(
      column: $state.table.salt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isHeat => $state.composableBuilder(
      column: $state.table.isHeat,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isAllergy => $state.composableBuilder(
      column: $state.table.isAllergy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get origin => $state.composableBuilder(
      column: $state.table.origin,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter dishFoodstuffsTableRefs(
      ComposableFilter Function($$DishFoodstuffsTableTableFilterComposer f) f) {
    final $$DishFoodstuffsTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $state.db.dishFoodstuffsTable,
            getReferencedColumn: (t) => t.foodstuffId,
            builder: (joinBuilder, parentComposers) =>
                $$DishFoodstuffsTableTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.dishFoodstuffsTable,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }
}

class $$FoodstuffsTableTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $FoodstuffsTableTable> {
  $$FoodstuffsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get pieceNumber => $state.composableBuilder(
      column: $state.table.pieceNumber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pieceUnit => $state.composableBuilder(
      column: $state.table.pieceUnit,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get gram => $state.composableBuilder(
      column: $state.table.gram,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get energy => $state.composableBuilder(
      column: $state.table.energy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get protein => $state.composableBuilder(
      column: $state.table.protein,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get lipid => $state.composableBuilder(
      column: $state.table.lipid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get sodium => $state.composableBuilder(
      column: $state.table.sodium,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get carbohydrate => $state.composableBuilder(
      column: $state.table.carbohydrate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get calcium => $state.composableBuilder(
      column: $state.table.calcium,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get magnesium => $state.composableBuilder(
      column: $state.table.magnesium,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get iron => $state.composableBuilder(
      column: $state.table.iron,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get zinc => $state.composableBuilder(
      column: $state.table.zinc,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get retinol => $state.composableBuilder(
      column: $state.table.retinol,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get vitaminB1 => $state.composableBuilder(
      column: $state.table.vitaminB1,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get vitaminB2 => $state.composableBuilder(
      column: $state.table.vitaminB2,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get vitaminC => $state.composableBuilder(
      column: $state.table.vitaminC,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get dietaryFiber => $state.composableBuilder(
      column: $state.table.dietaryFiber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get salt => $state.composableBuilder(
      column: $state.table.salt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isHeat => $state.composableBuilder(
      column: $state.table.isHeat,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isAllergy => $state.composableBuilder(
      column: $state.table.isAllergy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get origin => $state.composableBuilder(
      column: $state.table.origin,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$DishFoodstuffsTableTableCreateCompanionBuilder
    = DishFoodstuffsTableCompanion Function({
  required int dishId,
  required int foodstuffId,
  Value<int> rowid,
});
typedef $$DishFoodstuffsTableTableUpdateCompanionBuilder
    = DishFoodstuffsTableCompanion Function({
  Value<int> dishId,
  Value<int> foodstuffId,
  Value<int> rowid,
});

class $$DishFoodstuffsTableTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $DishFoodstuffsTableTable,
    DishFoodstuffsSchema,
    $$DishFoodstuffsTableTableFilterComposer,
    $$DishFoodstuffsTableTableOrderingComposer,
    $$DishFoodstuffsTableTableCreateCompanionBuilder,
    $$DishFoodstuffsTableTableUpdateCompanionBuilder> {
  $$DishFoodstuffsTableTableTableManager(
      _$LocalDatabase db, $DishFoodstuffsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$DishFoodstuffsTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$DishFoodstuffsTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> dishId = const Value.absent(),
            Value<int> foodstuffId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DishFoodstuffsTableCompanion(
            dishId: dishId,
            foodstuffId: foodstuffId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int dishId,
            required int foodstuffId,
            Value<int> rowid = const Value.absent(),
          }) =>
              DishFoodstuffsTableCompanion.insert(
            dishId: dishId,
            foodstuffId: foodstuffId,
            rowid: rowid,
          ),
        ));
}

class $$DishFoodstuffsTableTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $DishFoodstuffsTableTable> {
  $$DishFoodstuffsTableTableFilterComposer(super.$state);
  $$DishesTableTableFilterComposer get dishId {
    final $$DishesTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dishId,
        referencedTable: $state.db.dishesTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$DishesTableTableFilterComposer(ComposerState($state.db,
                $state.db.dishesTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$FoodstuffsTableTableFilterComposer get foodstuffId {
    final $$FoodstuffsTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.foodstuffId,
            referencedTable: $state.db.foodstuffsTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$FoodstuffsTableTableFilterComposer(ComposerState($state.db,
                    $state.db.foodstuffsTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$DishFoodstuffsTableTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $DishFoodstuffsTableTable> {
  $$DishFoodstuffsTableTableOrderingComposer(super.$state);
  $$DishesTableTableOrderingComposer get dishId {
    final $$DishesTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dishId,
        referencedTable: $state.db.dishesTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$DishesTableTableOrderingComposer(ComposerState($state.db,
                $state.db.dishesTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$FoodstuffsTableTableOrderingComposer get foodstuffId {
    final $$FoodstuffsTableTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.foodstuffId,
            referencedTable: $state.db.foodstuffsTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$FoodstuffsTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.foodstuffsTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$UsersTableTableCreateCompanionBuilder = UsersTableCompanion Function({
  Value<int> id,
  required String name,
  required int schoolId,
  required int schoolYear,
  Value<DateTime?> authorizedAt,
});
typedef $$UsersTableTableUpdateCompanionBuilder = UsersTableCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<int> schoolId,
  Value<int> schoolYear,
  Value<DateTime?> authorizedAt,
});

class $$UsersTableTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $UsersTableTable,
    UsersSchema,
    $$UsersTableTableFilterComposer,
    $$UsersTableTableOrderingComposer,
    $$UsersTableTableCreateCompanionBuilder,
    $$UsersTableTableUpdateCompanionBuilder> {
  $$UsersTableTableTableManager(_$LocalDatabase db, $UsersTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UsersTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UsersTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> schoolId = const Value.absent(),
            Value<int> schoolYear = const Value.absent(),
            Value<DateTime?> authorizedAt = const Value.absent(),
          }) =>
              UsersTableCompanion(
            id: id,
            name: name,
            schoolId: schoolId,
            schoolYear: schoolYear,
            authorizedAt: authorizedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required int schoolId,
            required int schoolYear,
            Value<DateTime?> authorizedAt = const Value.absent(),
          }) =>
              UsersTableCompanion.insert(
            id: id,
            name: name,
            schoolId: schoolId,
            schoolYear: schoolYear,
            authorizedAt: authorizedAt,
          ),
        ));
}

class $$UsersTableTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $UsersTableTable> {
  $$UsersTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get schoolYear => $state.composableBuilder(
      column: $state.table.schoolYear,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get authorizedAt => $state.composableBuilder(
      column: $state.table.authorizedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$SchoolsTableTableFilterComposer get schoolId {
    final $$SchoolsTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.schoolId,
        referencedTable: $state.db.schoolsTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$SchoolsTableTableFilterComposer(ComposerState($state.db,
                $state.db.schoolsTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$UsersTableTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $UsersTableTable> {
  $$UsersTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get schoolYear => $state.composableBuilder(
      column: $state.table.schoolYear,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get authorizedAt => $state.composableBuilder(
      column: $state.table.authorizedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$SchoolsTableTableOrderingComposer get schoolId {
    final $$SchoolsTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.schoolId,
        referencedTable: $state.db.schoolsTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$SchoolsTableTableOrderingComposer(ComposerState($state.db,
                $state.db.schoolsTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$DictionaryItemsTableTableCreateCompanionBuilder
    = DictionaryItemsTableCompanion Function({
  Value<int> id,
  required int group,
  required String name,
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
  Value<String?> note,
});
typedef $$DictionaryItemsTableTableUpdateCompanionBuilder
    = DictionaryItemsTableCompanion Function({
  Value<int> id,
  Value<int> group,
  Value<String> name,
  Value<double> energy,
  Value<double> protein,
  Value<double> lipid,
  Value<double> sodium,
  Value<double> carbohydrate,
  Value<double> calcium,
  Value<double> magnesium,
  Value<double> iron,
  Value<double> zinc,
  Value<double> retinol,
  Value<double> vitaminB1,
  Value<double> vitaminB2,
  Value<double> vitaminC,
  Value<double> dietaryFiber,
  Value<double> salt,
  Value<String?> note,
});

class $$DictionaryItemsTableTableTableManager extends RootTableManager<
    _$LocalDatabase,
    $DictionaryItemsTableTable,
    DictionaryItemsSchema,
    $$DictionaryItemsTableTableFilterComposer,
    $$DictionaryItemsTableTableOrderingComposer,
    $$DictionaryItemsTableTableCreateCompanionBuilder,
    $$DictionaryItemsTableTableUpdateCompanionBuilder> {
  $$DictionaryItemsTableTableTableManager(
      _$LocalDatabase db, $DictionaryItemsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$DictionaryItemsTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$DictionaryItemsTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> group = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<double> energy = const Value.absent(),
            Value<double> protein = const Value.absent(),
            Value<double> lipid = const Value.absent(),
            Value<double> sodium = const Value.absent(),
            Value<double> carbohydrate = const Value.absent(),
            Value<double> calcium = const Value.absent(),
            Value<double> magnesium = const Value.absent(),
            Value<double> iron = const Value.absent(),
            Value<double> zinc = const Value.absent(),
            Value<double> retinol = const Value.absent(),
            Value<double> vitaminB1 = const Value.absent(),
            Value<double> vitaminB2 = const Value.absent(),
            Value<double> vitaminC = const Value.absent(),
            Value<double> dietaryFiber = const Value.absent(),
            Value<double> salt = const Value.absent(),
            Value<String?> note = const Value.absent(),
          }) =>
              DictionaryItemsTableCompanion(
            id: id,
            group: group,
            name: name,
            energy: energy,
            protein: protein,
            lipid: lipid,
            sodium: sodium,
            carbohydrate: carbohydrate,
            calcium: calcium,
            magnesium: magnesium,
            iron: iron,
            zinc: zinc,
            retinol: retinol,
            vitaminB1: vitaminB1,
            vitaminB2: vitaminB2,
            vitaminC: vitaminC,
            dietaryFiber: dietaryFiber,
            salt: salt,
            note: note,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int group,
            required String name,
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
            Value<String?> note = const Value.absent(),
          }) =>
              DictionaryItemsTableCompanion.insert(
            id: id,
            group: group,
            name: name,
            energy: energy,
            protein: protein,
            lipid: lipid,
            sodium: sodium,
            carbohydrate: carbohydrate,
            calcium: calcium,
            magnesium: magnesium,
            iron: iron,
            zinc: zinc,
            retinol: retinol,
            vitaminB1: vitaminB1,
            vitaminB2: vitaminB2,
            vitaminC: vitaminC,
            dietaryFiber: dietaryFiber,
            salt: salt,
            note: note,
          ),
        ));
}

class $$DictionaryItemsTableTableFilterComposer
    extends FilterComposer<_$LocalDatabase, $DictionaryItemsTableTable> {
  $$DictionaryItemsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get group => $state.composableBuilder(
      column: $state.table.group,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get energy => $state.composableBuilder(
      column: $state.table.energy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get protein => $state.composableBuilder(
      column: $state.table.protein,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get lipid => $state.composableBuilder(
      column: $state.table.lipid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get sodium => $state.composableBuilder(
      column: $state.table.sodium,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get carbohydrate => $state.composableBuilder(
      column: $state.table.carbohydrate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get calcium => $state.composableBuilder(
      column: $state.table.calcium,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get magnesium => $state.composableBuilder(
      column: $state.table.magnesium,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get iron => $state.composableBuilder(
      column: $state.table.iron,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get zinc => $state.composableBuilder(
      column: $state.table.zinc,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get retinol => $state.composableBuilder(
      column: $state.table.retinol,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get vitaminB1 => $state.composableBuilder(
      column: $state.table.vitaminB1,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get vitaminB2 => $state.composableBuilder(
      column: $state.table.vitaminB2,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get vitaminC => $state.composableBuilder(
      column: $state.table.vitaminC,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get dietaryFiber => $state.composableBuilder(
      column: $state.table.dietaryFiber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get salt => $state.composableBuilder(
      column: $state.table.salt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DictionaryItemsTableTableOrderingComposer
    extends OrderingComposer<_$LocalDatabase, $DictionaryItemsTableTable> {
  $$DictionaryItemsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get group => $state.composableBuilder(
      column: $state.table.group,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get energy => $state.composableBuilder(
      column: $state.table.energy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get protein => $state.composableBuilder(
      column: $state.table.protein,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get lipid => $state.composableBuilder(
      column: $state.table.lipid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get sodium => $state.composableBuilder(
      column: $state.table.sodium,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get carbohydrate => $state.composableBuilder(
      column: $state.table.carbohydrate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get calcium => $state.composableBuilder(
      column: $state.table.calcium,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get magnesium => $state.composableBuilder(
      column: $state.table.magnesium,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get iron => $state.composableBuilder(
      column: $state.table.iron,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get zinc => $state.composableBuilder(
      column: $state.table.zinc,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get retinol => $state.composableBuilder(
      column: $state.table.retinol,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get vitaminB1 => $state.composableBuilder(
      column: $state.table.vitaminB1,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get vitaminB2 => $state.composableBuilder(
      column: $state.table.vitaminB2,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get vitaminC => $state.composableBuilder(
      column: $state.table.vitaminC,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get dietaryFiber => $state.composableBuilder(
      column: $state.table.dietaryFiber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get salt => $state.composableBuilder(
      column: $state.table.salt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $LocalDatabaseManager {
  final _$LocalDatabase _db;
  $LocalDatabaseManager(this._db);
  $$SchoolsTableTableTableManager get schoolsTable =>
      $$SchoolsTableTableTableManager(_db, _db.schoolsTable);
  $$MenusTableTableTableManager get menusTable =>
      $$MenusTableTableTableManager(_db, _db.menusTable);
  $$DishesTableTableTableManager get dishesTable =>
      $$DishesTableTableTableManager(_db, _db.dishesTable);
  $$MenuDishesTableTableTableManager get menuDishesTable =>
      $$MenuDishesTableTableTableManager(_db, _db.menuDishesTable);
  $$FoodstuffsTableTableTableManager get foodstuffsTable =>
      $$FoodstuffsTableTableTableManager(_db, _db.foodstuffsTable);
  $$DishFoodstuffsTableTableTableManager get dishFoodstuffsTable =>
      $$DishFoodstuffsTableTableTableManager(_db, _db.dishFoodstuffsTable);
  $$UsersTableTableTableManager get usersTable =>
      $$UsersTableTableTableManager(_db, _db.usersTable);
  $$DictionaryItemsTableTableTableManager get dictionaryItemsTable =>
      $$DictionaryItemsTableTableTableManager(_db, _db.dictionaryItemsTable);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localDatabaseHash() => r'7fc59fd746d4d230c41f4608259788260f0b95bf';

/// See also [localDatabase].
@ProviderFor(localDatabase)
final localDatabaseProvider = Provider<LocalDatabase>.internal(
  localDatabase,
  name: r'localDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalDatabaseRef = ProviderRef<LocalDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
