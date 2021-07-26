// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menus_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class SchoolsSchema extends DataClass implements Insertable<SchoolsSchema> {
  final int id;
  final String name;
  final int lunchBlock;
  final int classification;
  SchoolsSchema(
      {required this.id,
      required this.name,
      required this.lunchBlock,
      required this.classification});
  factory SchoolsSchema.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SchoolsSchema(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      lunchBlock: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lunch_block'])!,
      classification: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}classification'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['lunch_block'] = Variable<int>(lunchBlock);
    map['classification'] = Variable<int>(classification);
    return map;
  }

  SchoolsTableCompanion toCompanion(bool nullToAbsent) {
    return SchoolsTableCompanion(
      id: Value(id),
      name: Value(name),
      lunchBlock: Value(lunchBlock),
      classification: Value(classification),
    );
  }

  factory SchoolsSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SchoolsSchema(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      lunchBlock: serializer.fromJson<int>(json['lunchBlock']),
      classification: serializer.fromJson<int>(json['classification']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'lunchBlock': serializer.toJson<int>(lunchBlock),
      'classification': serializer.toJson<int>(classification),
    };
  }

  SchoolsSchema copyWith(
          {int? id, String? name, int? lunchBlock, int? classification}) =>
      SchoolsSchema(
        id: id ?? this.id,
        name: name ?? this.name,
        lunchBlock: lunchBlock ?? this.lunchBlock,
        classification: classification ?? this.classification,
      );
  @override
  String toString() {
    return (StringBuffer('SchoolsSchema(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lunchBlock: $lunchBlock, ')
          ..write('classification: $classification')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode, $mrjc(lunchBlock.hashCode, classification.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SchoolsSchema &&
          other.id == this.id &&
          other.name == this.name &&
          other.lunchBlock == this.lunchBlock &&
          other.classification == this.classification);
}

class SchoolsTableCompanion extends UpdateCompanion<SchoolsSchema> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> lunchBlock;
  final Value<int> classification;
  const SchoolsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.lunchBlock = const Value.absent(),
    this.classification = const Value.absent(),
  });
  SchoolsTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int lunchBlock,
    required int classification,
  })  : name = Value(name),
        lunchBlock = Value(lunchBlock),
        classification = Value(classification);
  static Insertable<SchoolsSchema> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? lunchBlock,
    Expression<int>? classification,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (lunchBlock != null) 'lunch_block': lunchBlock,
      if (classification != null) 'classification': classification,
    });
  }

  SchoolsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? lunchBlock,
      Value<int>? classification}) {
    return SchoolsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      lunchBlock: lunchBlock ?? this.lunchBlock,
      classification: classification ?? this.classification,
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
    if (lunchBlock.present) {
      map['lunch_block'] = Variable<int>(lunchBlock.value);
    }
    if (classification.present) {
      map['classification'] = Variable<int>(classification.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SchoolsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lunchBlock: $lunchBlock, ')
          ..write('classification: $classification')
          ..write(')'))
        .toString();
  }
}

class $SchoolsTableTable extends SchoolsTable
    with TableInfo<$SchoolsTableTable, SchoolsSchema> {
  final GeneratedDatabase _db;
  final String? _alias;
  $SchoolsTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _lunchBlockMeta = const VerificationMeta('lunchBlock');
  late final GeneratedColumn<int?> lunchBlock = GeneratedColumn<int?>(
      'lunch_block', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _classificationMeta =
      const VerificationMeta('classification');
  late final GeneratedColumn<int?> classification = GeneratedColumn<int?>(
      'classification', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, lunchBlock, classification];
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SchoolsSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SchoolsSchema.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SchoolsTableTable createAlias(String alias) {
    return $SchoolsTableTable(_db, alias);
  }
}

class MenusSchema extends DataClass implements Insertable<MenusSchema> {
  final int id;
  final int day;
  final int schoolId;
  MenusSchema({required this.id, required this.day, required this.schoolId});
  factory MenusSchema.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MenusSchema(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      day: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}day'])!,
      schoolId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}school_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['day'] = Variable<int>(day);
    map['school_id'] = Variable<int>(schoolId);
    return map;
  }

  MenusTableCompanion toCompanion(bool nullToAbsent) {
    return MenusTableCompanion(
      id: Value(id),
      day: Value(day),
      schoolId: Value(schoolId),
    );
  }

  factory MenusSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MenusSchema(
      id: serializer.fromJson<int>(json['id']),
      day: serializer.fromJson<int>(json['day']),
      schoolId: serializer.fromJson<int>(json['schoolId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'day': serializer.toJson<int>(day),
      'schoolId': serializer.toJson<int>(schoolId),
    };
  }

  MenusSchema copyWith({int? id, int? day, int? schoolId}) => MenusSchema(
        id: id ?? this.id,
        day: day ?? this.day,
        schoolId: schoolId ?? this.schoolId,
      );
  @override
  String toString() {
    return (StringBuffer('MenusSchema(')
          ..write('id: $id, ')
          ..write('day: $day, ')
          ..write('schoolId: $schoolId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(day.hashCode, schoolId.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MenusSchema &&
          other.id == this.id &&
          other.day == this.day &&
          other.schoolId == this.schoolId);
}

class MenusTableCompanion extends UpdateCompanion<MenusSchema> {
  final Value<int> id;
  final Value<int> day;
  final Value<int> schoolId;
  const MenusTableCompanion({
    this.id = const Value.absent(),
    this.day = const Value.absent(),
    this.schoolId = const Value.absent(),
  });
  MenusTableCompanion.insert({
    this.id = const Value.absent(),
    required int day,
    required int schoolId,
  })  : day = Value(day),
        schoolId = Value(schoolId);
  static Insertable<MenusSchema> custom({
    Expression<int>? id,
    Expression<int>? day,
    Expression<int>? schoolId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (day != null) 'day': day,
      if (schoolId != null) 'school_id': schoolId,
    });
  }

  MenusTableCompanion copyWith(
      {Value<int>? id, Value<int>? day, Value<int>? schoolId}) {
    return MenusTableCompanion(
      id: id ?? this.id,
      day: day ?? this.day,
      schoolId: schoolId ?? this.schoolId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (day.present) {
      map['day'] = Variable<int>(day.value);
    }
    if (schoolId.present) {
      map['school_id'] = Variable<int>(schoolId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MenusTableCompanion(')
          ..write('id: $id, ')
          ..write('day: $day, ')
          ..write('schoolId: $schoolId')
          ..write(')'))
        .toString();
  }
}

class $MenusTableTable extends MenusTable
    with TableInfo<$MenusTableTable, MenusSchema> {
  final GeneratedDatabase _db;
  final String? _alias;
  $MenusTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _dayMeta = const VerificationMeta('day');
  late final GeneratedColumn<int?> day = GeneratedColumn<int?>(
      'day', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _schoolIdMeta = const VerificationMeta('schoolId');
  late final GeneratedColumn<int?> schoolId = GeneratedColumn<int?>(
      'school_id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, day, schoolId];
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MenusSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MenusSchema.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MenusTableTable createAlias(String alias) {
    return $MenusTableTable(_db, alias);
  }
}

class MenuDishesSchema extends DataClass
    implements Insertable<MenuDishesSchema> {
  final int menuId;
  final int dishId;
  MenuDishesSchema({required this.menuId, required this.dishId});
  factory MenuDishesSchema.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
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
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MenuDishesSchema(
      menuId: serializer.fromJson<int>(json['menuId']),
      dishId: serializer.fromJson<int>(json['dishId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
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
  int get hashCode => $mrjf($mrjc(menuId.hashCode, dishId.hashCode));
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
  final GeneratedDatabase _db;
  final String? _alias;
  $MenuDishesTableTable(this._db, [this._alias]);
  final VerificationMeta _menuIdMeta = const VerificationMeta('menuId');
  late final GeneratedColumn<int?> menuId = GeneratedColumn<int?>(
      'menu_id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _dishIdMeta = const VerificationMeta('dishId');
  late final GeneratedColumn<int?> dishId = GeneratedColumn<int?>(
      'dish_id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
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
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  MenuDishesSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MenuDishesSchema.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MenuDishesTableTable createAlias(String alias) {
    return $MenuDishesTableTable(_db, alias);
  }
}

class DishesSchema extends DataClass implements Insertable<DishesSchema> {
  final int id;
  final String name;
  final String? category;
  DishesSchema({required this.id, required this.name, this.category});
  factory DishesSchema.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
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
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DishesSchema(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      category: serializer.fromJson<String?>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
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
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(name.hashCode, category.hashCode)));
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
  final GeneratedDatabase _db;
  final String? _alias;
  $DishesTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
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
    return DishesSchema.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DishesTableTable createAlias(String alias) {
    return $DishesTableTable(_db, alias);
  }
}

class DishFoodstuffsSchema extends DataClass
    implements Insertable<DishFoodstuffsSchema> {
  final int dishId;
  final int foodstuffId;
  DishFoodstuffsSchema({required this.dishId, required this.foodstuffId});
  factory DishFoodstuffsSchema.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
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
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DishFoodstuffsSchema(
      dishId: serializer.fromJson<int>(json['dishId']),
      foodstuffId: serializer.fromJson<int>(json['foodstuffId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
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
  int get hashCode => $mrjf($mrjc(dishId.hashCode, foodstuffId.hashCode));
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
  final GeneratedDatabase _db;
  final String? _alias;
  $DishFoodstuffsTableTable(this._db, [this._alias]);
  final VerificationMeta _dishIdMeta = const VerificationMeta('dishId');
  late final GeneratedColumn<int?> dishId = GeneratedColumn<int?>(
      'dish_id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _foodstuffIdMeta =
      const VerificationMeta('foodstuffId');
  late final GeneratedColumn<int?> foodstuffId = GeneratedColumn<int?>(
      'foodstuff_id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
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
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  DishFoodstuffsSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DishFoodstuffsSchema.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DishFoodstuffsTableTable createAlias(String alias) {
    return $DishFoodstuffsTableTable(_db, alias);
  }
}

class FoodstuffsSchema extends DataClass
    implements Insertable<FoodstuffsSchema> {
  final int id;
  final int foodId;
  final int? piece;
  final double gram;
  FoodstuffsSchema(
      {required this.id, required this.foodId, this.piece, required this.gram});
  factory FoodstuffsSchema.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FoodstuffsSchema(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      foodId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}food_id'])!,
      piece: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}piece']),
      gram: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gram'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['food_id'] = Variable<int>(foodId);
    if (!nullToAbsent || piece != null) {
      map['piece'] = Variable<int?>(piece);
    }
    map['gram'] = Variable<double>(gram);
    return map;
  }

  FoodstuffsTableCompanion toCompanion(bool nullToAbsent) {
    return FoodstuffsTableCompanion(
      id: Value(id),
      foodId: Value(foodId),
      piece:
          piece == null && nullToAbsent ? const Value.absent() : Value(piece),
      gram: Value(gram),
    );
  }

  factory FoodstuffsSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FoodstuffsSchema(
      id: serializer.fromJson<int>(json['id']),
      foodId: serializer.fromJson<int>(json['foodId']),
      piece: serializer.fromJson<int?>(json['piece']),
      gram: serializer.fromJson<double>(json['gram']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'foodId': serializer.toJson<int>(foodId),
      'piece': serializer.toJson<int?>(piece),
      'gram': serializer.toJson<double>(gram),
    };
  }

  FoodstuffsSchema copyWith({int? id, int? foodId, int? piece, double? gram}) =>
      FoodstuffsSchema(
        id: id ?? this.id,
        foodId: foodId ?? this.foodId,
        piece: piece ?? this.piece,
        gram: gram ?? this.gram,
      );
  @override
  String toString() {
    return (StringBuffer('FoodstuffsSchema(')
          ..write('id: $id, ')
          ..write('foodId: $foodId, ')
          ..write('piece: $piece, ')
          ..write('gram: $gram')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(foodId.hashCode, $mrjc(piece.hashCode, gram.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodstuffsSchema &&
          other.id == this.id &&
          other.foodId == this.foodId &&
          other.piece == this.piece &&
          other.gram == this.gram);
}

class FoodstuffsTableCompanion extends UpdateCompanion<FoodstuffsSchema> {
  final Value<int> id;
  final Value<int> foodId;
  final Value<int?> piece;
  final Value<double> gram;
  const FoodstuffsTableCompanion({
    this.id = const Value.absent(),
    this.foodId = const Value.absent(),
    this.piece = const Value.absent(),
    this.gram = const Value.absent(),
  });
  FoodstuffsTableCompanion.insert({
    this.id = const Value.absent(),
    required int foodId,
    this.piece = const Value.absent(),
    required double gram,
  })  : foodId = Value(foodId),
        gram = Value(gram);
  static Insertable<FoodstuffsSchema> custom({
    Expression<int>? id,
    Expression<int>? foodId,
    Expression<int?>? piece,
    Expression<double>? gram,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (foodId != null) 'food_id': foodId,
      if (piece != null) 'piece': piece,
      if (gram != null) 'gram': gram,
    });
  }

  FoodstuffsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? foodId,
      Value<int?>? piece,
      Value<double>? gram}) {
    return FoodstuffsTableCompanion(
      id: id ?? this.id,
      foodId: foodId ?? this.foodId,
      piece: piece ?? this.piece,
      gram: gram ?? this.gram,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (foodId.present) {
      map['food_id'] = Variable<int>(foodId.value);
    }
    if (piece.present) {
      map['piece'] = Variable<int?>(piece.value);
    }
    if (gram.present) {
      map['gram'] = Variable<double>(gram.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodstuffsTableCompanion(')
          ..write('id: $id, ')
          ..write('foodId: $foodId, ')
          ..write('piece: $piece, ')
          ..write('gram: $gram')
          ..write(')'))
        .toString();
  }
}

class $FoodstuffsTableTable extends FoodstuffsTable
    with TableInfo<$FoodstuffsTableTable, FoodstuffsSchema> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FoodstuffsTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _foodIdMeta = const VerificationMeta('foodId');
  late final GeneratedColumn<int?> foodId = GeneratedColumn<int?>(
      'food_id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _pieceMeta = const VerificationMeta('piece');
  late final GeneratedColumn<int?> piece = GeneratedColumn<int?>(
      'piece', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false);
  final VerificationMeta _gramMeta = const VerificationMeta('gram');
  late final GeneratedColumn<double?> gram = GeneratedColumn<double?>(
      'gram', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, foodId, piece, gram];
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
    if (data.containsKey('food_id')) {
      context.handle(_foodIdMeta,
          foodId.isAcceptableOrUnknown(data['food_id']!, _foodIdMeta));
    } else if (isInserting) {
      context.missing(_foodIdMeta);
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FoodstuffsSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FoodstuffsSchema.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FoodstuffsTableTable createAlias(String alias) {
    return $FoodstuffsTableTable(_db, alias);
  }
}

class FoodsSchema extends DataClass implements Insertable<FoodsSchema> {
  final int id;
  final String name;
  final bool isHeat;
  final bool isAllergy;
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
  FoodsSchema(
      {required this.id,
      required this.name,
      required this.isHeat,
      required this.isAllergy,
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
      required this.salt});
  factory FoodsSchema.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FoodsSchema(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      isHeat: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_heat'])!,
      isAllergy: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_allergy'])!,
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
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['is_heat'] = Variable<bool>(isHeat);
    map['is_allergy'] = Variable<bool>(isAllergy);
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
    return map;
  }

  FoodsTableCompanion toCompanion(bool nullToAbsent) {
    return FoodsTableCompanion(
      id: Value(id),
      name: Value(name),
      isHeat: Value(isHeat),
      isAllergy: Value(isAllergy),
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
    );
  }

  factory FoodsSchema.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FoodsSchema(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      isHeat: serializer.fromJson<bool>(json['isHeat']),
      isAllergy: serializer.fromJson<bool>(json['isAllergy']),
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
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'isHeat': serializer.toJson<bool>(isHeat),
      'isAllergy': serializer.toJson<bool>(isAllergy),
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
    };
  }

  FoodsSchema copyWith(
          {int? id,
          String? name,
          bool? isHeat,
          bool? isAllergy,
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
          double? salt}) =>
      FoodsSchema(
        id: id ?? this.id,
        name: name ?? this.name,
        isHeat: isHeat ?? this.isHeat,
        isAllergy: isAllergy ?? this.isAllergy,
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
      );
  @override
  String toString() {
    return (StringBuffer('FoodsSchema(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('isHeat: $isHeat, ')
          ..write('isAllergy: $isAllergy, ')
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
          ..write('salt: $salt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              isHeat.hashCode,
              $mrjc(
                  isAllergy.hashCode,
                  $mrjc(
                      energy.hashCode,
                      $mrjc(
                          protein.hashCode,
                          $mrjc(
                              lipid.hashCode,
                              $mrjc(
                                  sodium.hashCode,
                                  $mrjc(
                                      carbohydrate.hashCode,
                                      $mrjc(
                                          calcium.hashCode,
                                          $mrjc(
                                              magnesium.hashCode,
                                              $mrjc(
                                                  iron.hashCode,
                                                  $mrjc(
                                                      zinc.hashCode,
                                                      $mrjc(
                                                          retinol.hashCode,
                                                          $mrjc(
                                                              vitaminB1
                                                                  .hashCode,
                                                              $mrjc(
                                                                  vitaminB2
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      vitaminC
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          dietaryFiber
                                                                              .hashCode,
                                                                          salt.hashCode)))))))))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodsSchema &&
          other.id == this.id &&
          other.name == this.name &&
          other.isHeat == this.isHeat &&
          other.isAllergy == this.isAllergy &&
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
          other.salt == this.salt);
}

class FoodsTableCompanion extends UpdateCompanion<FoodsSchema> {
  final Value<int> id;
  final Value<String> name;
  final Value<bool> isHeat;
  final Value<bool> isAllergy;
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
  const FoodsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.isHeat = const Value.absent(),
    this.isAllergy = const Value.absent(),
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
  });
  FoodsTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required bool isHeat,
    required bool isAllergy,
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
  })  : name = Value(name),
        isHeat = Value(isHeat),
        isAllergy = Value(isAllergy),
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
  static Insertable<FoodsSchema> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<bool>? isHeat,
    Expression<bool>? isAllergy,
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
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (isHeat != null) 'is_heat': isHeat,
      if (isAllergy != null) 'is_allergy': isAllergy,
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
    });
  }

  FoodsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<bool>? isHeat,
      Value<bool>? isAllergy,
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
      Value<double>? salt}) {
    return FoodsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      isHeat: isHeat ?? this.isHeat,
      isAllergy: isAllergy ?? this.isAllergy,
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
    if (isHeat.present) {
      map['is_heat'] = Variable<bool>(isHeat.value);
    }
    if (isAllergy.present) {
      map['is_allergy'] = Variable<bool>(isAllergy.value);
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('isHeat: $isHeat, ')
          ..write('isAllergy: $isAllergy, ')
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
          ..write('salt: $salt')
          ..write(')'))
        .toString();
  }
}

class $FoodsTableTable extends FoodsTable
    with TableInfo<$FoodsTableTable, FoodsSchema> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FoodsTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _isHeatMeta = const VerificationMeta('isHeat');
  late final GeneratedColumn<bool?> isHeat = GeneratedColumn<bool?>(
      'is_heat', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_heat IN (0, 1))');
  final VerificationMeta _isAllergyMeta = const VerificationMeta('isAllergy');
  late final GeneratedColumn<bool?> isAllergy = GeneratedColumn<bool?>(
      'is_allergy', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_allergy IN (0, 1))');
  final VerificationMeta _energyMeta = const VerificationMeta('energy');
  late final GeneratedColumn<double?> energy = GeneratedColumn<double?>(
      'energy', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _proteinMeta = const VerificationMeta('protein');
  late final GeneratedColumn<double?> protein = GeneratedColumn<double?>(
      'protein', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _lipidMeta = const VerificationMeta('lipid');
  late final GeneratedColumn<double?> lipid = GeneratedColumn<double?>(
      'lipid', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _sodiumMeta = const VerificationMeta('sodium');
  late final GeneratedColumn<double?> sodium = GeneratedColumn<double?>(
      'sodium', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _carbohydrateMeta =
      const VerificationMeta('carbohydrate');
  late final GeneratedColumn<double?> carbohydrate = GeneratedColumn<double?>(
      'carbohydrate', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _calciumMeta = const VerificationMeta('calcium');
  late final GeneratedColumn<double?> calcium = GeneratedColumn<double?>(
      'calcium', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _magnesiumMeta = const VerificationMeta('magnesium');
  late final GeneratedColumn<double?> magnesium = GeneratedColumn<double?>(
      'magnesium', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _ironMeta = const VerificationMeta('iron');
  late final GeneratedColumn<double?> iron = GeneratedColumn<double?>(
      'iron', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _zincMeta = const VerificationMeta('zinc');
  late final GeneratedColumn<double?> zinc = GeneratedColumn<double?>(
      'zinc', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _retinolMeta = const VerificationMeta('retinol');
  late final GeneratedColumn<double?> retinol = GeneratedColumn<double?>(
      'retinol', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _vitaminB1Meta = const VerificationMeta('vitaminB1');
  late final GeneratedColumn<double?> vitaminB1 = GeneratedColumn<double?>(
      'vitamin_b1', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _vitaminB2Meta = const VerificationMeta('vitaminB2');
  late final GeneratedColumn<double?> vitaminB2 = GeneratedColumn<double?>(
      'vitamin_b2', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _vitaminCMeta = const VerificationMeta('vitaminC');
  late final GeneratedColumn<double?> vitaminC = GeneratedColumn<double?>(
      'vitamin_c', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _dietaryFiberMeta =
      const VerificationMeta('dietaryFiber');
  late final GeneratedColumn<double?> dietaryFiber = GeneratedColumn<double?>(
      'dietary_fiber', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _saltMeta = const VerificationMeta('salt');
  late final GeneratedColumn<double?> salt = GeneratedColumn<double?>(
      'salt', aliasedName, false,
      typeName: 'REAL', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        isHeat,
        isAllergy,
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
        salt
      ];
  @override
  String get aliasedName => _alias ?? 'foods_table';
  @override
  String get actualTableName => 'foods_table';
  @override
  VerificationContext validateIntegrity(Insertable<FoodsSchema> instance,
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FoodsSchema map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FoodsSchema.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FoodsTableTable createAlias(String alias) {
    return $FoodsTableTable(_db, alias);
  }
}

abstract class _$MenusDatabase extends GeneratedDatabase {
  _$MenusDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SchoolsTableTable schoolsTable = $SchoolsTableTable(this);
  late final $MenusTableTable menusTable = $MenusTableTable(this);
  late final $MenuDishesTableTable menuDishesTable =
      $MenuDishesTableTable(this);
  late final $DishesTableTable dishesTable = $DishesTableTable(this);
  late final $DishFoodstuffsTableTable dishFoodstuffsTable =
      $DishFoodstuffsTableTable(this);
  late final $FoodstuffsTableTable foodstuffsTable =
      $FoodstuffsTableTable(this);
  late final $FoodsTableTable foodsTable = $FoodsTableTable(this);
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
        foodsTable
      ];
}
