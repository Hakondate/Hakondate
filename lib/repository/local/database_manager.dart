import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'package:hakondate_v2/repository/local/table/users_table.dart';
import 'package:hakondate_v2/repository/local/table/dish_foodstuffs_table.dart';
import 'package:hakondate_v2/repository/local/table/dishes_table.dart';
import 'package:hakondate_v2/repository/local/table/foodstuffs_table.dart';
import 'package:hakondate_v2/repository/local/table/menu_dishes_table.dart';
import 'package:hakondate_v2/repository/local/table/menus_table.dart';
import 'package:hakondate_v2/repository/local/table/schools_table.dart';

part 'database_manager.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final _dbFolder = await getApplicationDocumentsDirectory();
    final _file = File(p.join(_dbFolder.path, 'db.sqlite'));
    return VmDatabase(_file);
  });
}

final DatabaseManager databaseManager = DatabaseManager();

@UseMoor(tables: [
  SchoolsTable,
  MenusTable,
  MenuDishesTable,
  DishesTable,
  DishFoodstuffsTable,
  FoodstuffsTable,
  UsersTable,
])
class DatabaseManager extends _$DatabaseManager {
  DatabaseManager() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  /* SELECT */
  // MenusSchemaの全データ取得
  Future<List<MenusSchema>> get allMenusSchemas => select(menusTable).get();

  // SchoolsSchemaの全データ取得
  Future<List<SchoolsSchema>> get allSchoolsSchemas =>
      select(schoolsTable).get();

  // 範囲指定でのデータ取得
  Future<List<MenusSchema>> getSelectionPeriodMenusSchemas(
          DateTime startDay, DateTime endDay, int schoolId) =>
      (select(menusTable)
            ..where((t) =>
                t.day.isBetweenValues(startDay, endDay) &
                t.schoolId.equals(schoolId)))
          .get();

  // IDからMenusSchemaを取得
  Future<MenusSchema> getMenusSchemaById(int id) =>
      (select(menusTable)..where((t) => t.id.equals(id))).getSingle();

  // IDからSchoolSchemaを取得
  Future<SchoolsSchema> getSchoolsSchemaById(int id) =>
      (select(schoolsTable)..where((t) => t.id.equals(id))).getSingle();

  // MenuIDから献立の料理IDが格納されているリストを取得
  Future<List<MenuDishesSchema>> getMenuDishesSchemasByMenuId(int id) =>
      (select(menuDishesTable)..where((t) => t.menuId.equals(id))).get();

  // IDからDishesSchemaを取得
  Future<DishesSchema> getDishesSchemaById(int id) =>
      (select(dishesTable)..where((t) => t.id.equals(id))).getSingle();

  // DishIDから料理の食材IDが格納されているリストを取得
  Future<List<DishFoodstuffsSchema>> getDishFoodstuffsSchemasByDishId(int id) =>
      (select(dishFoodstuffsTable)..where((t) => t.dishId.equals(id))).get();

  // IDからFoodstuffsSchemaを取得
  Future<FoodstuffsSchema> getFoodstuffsSchemaById(int id) =>
      (select(foodstuffsTable)..where((t) => t.id.equals(id))).getSingle();

  // UsersSchemaの全データ取得
  Future<List<UsersSchema>> get allUsersSchemas => select(usersTable).get();

  // IDからUsersSchemaを取得
  Future<UsersSchema> getUsersSchemaById(int id) =>
      (select(usersTable)..where((t) => t.id.equals(id))).getSingle();

  /* INSERT */
  // MenusSchemaを追加
  Future<int> addMenusSchema(MenusTableCompanion entry) =>
      into(menusTable).insert(
        entry,
        onConflict: DoUpdate((old) => MenusTableCompanion.custom(
              event: Constant(entry.event.value),
            )),
      );

  // SchoolsSchemaを追加
  Future<int> addSchoolsSchema(SchoolsTableCompanion entry) =>
      into(schoolsTable).insertOnConflictUpdate(entry);

  // MenuDishesSchemaを追加
  Future<int> addMenuDishesSchema(MenuDishesTableCompanion entry) =>
      into(menuDishesTable).insertOnConflictUpdate(entry);

  // DishesSchemaを追加
  Future<int> addDishesSchema(DishesTableCompanion entry) async {
    final DishesSchema? _conflictSchema = await (select(dishesTable)
          ..where((t) => t.name.equals(entry.name.value)))
        .getSingleOrNull();
    if (_conflictSchema == null) {
      return await into(dishesTable).insert(
        entry,
        onConflict: DoUpdate((old) => DishesTableCompanion.custom(
              category: Constant(entry.category.value),
            )),
      );
    } else if (_conflictSchema.category != entry.category.value) {
      return await (update(dishesTable)
            ..where((t) => t.name.equals(entry.name.value)))
          .write(DishesTableCompanion(category: entry.category));
    }

    return _conflictSchema.id;
  }

  // DishFoodstuffsSchemaを追加
  Future<int> addDishFoodstuffsSchema(DishFoodstuffsTableCompanion entry) =>
      into(dishFoodstuffsTable).insertOnConflictUpdate(entry);

  // FoodstuffsSchemaを追加
  Future<int> addFoodstuffsSchema(FoodstuffsTableCompanion entry) async {
    final FoodstuffsSchema? _conflictSchema = await (select(foodstuffsTable)
          ..where((t) =>
              t.name.equals(entry.name.value) &
              t.gram.equals(entry.gram.value) &
              t.isHeat.equals(entry.isHeat.value) &
              t.isAllergy.equals(entry.isAllergy.value)))
        .getSingleOrNull();
    if (_conflictSchema == null) {
      return await into(foodstuffsTable).insert(
        entry,
        onConflict: DoUpdate((old) => FoodstuffsTableCompanion.custom(
              origin: Constant(entry.origin.value),
            )),
      );
    } else if (_conflictSchema.piece != entry.piece.value ||
        _conflictSchema.energy != entry.energy.value ||
        _conflictSchema.protein != entry.protein.value ||
        _conflictSchema.lipid != entry.lipid.value ||
        _conflictSchema.sodium != entry.sodium.value ||
        _conflictSchema.carbohydrate != entry.carbohydrate.value ||
        _conflictSchema.calcium != entry.calcium.value ||
        _conflictSchema.magnesium != entry.magnesium.value ||
        _conflictSchema.iron != entry.iron.value ||
        _conflictSchema.zinc != entry.zinc.value ||
        _conflictSchema.retinol != entry.retinol.value ||
        _conflictSchema.vitaminB1 != entry.vitaminB1.value ||
        _conflictSchema.vitaminB2 != entry.vitaminB2.value ||
        _conflictSchema.vitaminC != entry.vitaminC.value ||
        _conflictSchema.dietaryFiber != entry.dietaryFiber.value ||
        _conflictSchema.salt != entry.salt.value ||
        _conflictSchema.origin != entry.origin.value) {
      return await (update(foodstuffsTable)
            ..where((t) =>
                t.name.equals(entry.name.value) &
                t.gram.equals(entry.gram.value) &
                t.isHeat.equals(entry.isHeat.value) &
                t.isAllergy.equals(entry.isAllergy.value)))
          .write(FoodstuffsTableCompanion(
              piece: entry.piece,
              energy: entry.energy,
              lipid: entry.lipid,
              sodium: entry.sodium,
              carbohydrate: entry.carbohydrate,
              calcium: entry.calcium,
              magnesium: entry.magnesium,
              iron: entry.iron,
              zinc: entry.zinc,
              retinol: entry.retinol,
              vitaminB1: entry.vitaminB1,
              vitaminB2: entry.vitaminB2,
              vitaminC: entry.vitaminC,
              dietaryFiber: entry.dietaryFiber,
              salt: entry.salt,
              origin: entry.origin));
    }

    return _conflictSchema.id;
  }

  Future<int> addUsersSchema(UsersTableCompanion entry) =>
      into(usersTable).insertOnConflictUpdate(entry);

  /* UPDATE */
  Future<void> updateUser(UsersTableCompanion entry) =>
      (update(usersTable)..where((t) => t.id.equals(entry.id.value)))
          .write(entry);

  /* COUNT */
  Future<int> countSchools() async {
    final Expression<int> exp = schoolsTable.id.count();
    final query = selectOnly(schoolsTable)..addColumns([exp]);

    return await query.map((scheme) => scheme.read(exp)).getSingle();
  }

  Future<int> countUsers() async {
    final Expression<int> exp = usersTable.id.count();
    final query = selectOnly(usersTable)..addColumns([exp]);

    return await query.map((scheme) => scheme.read(exp)).getSingle();
  }
}
