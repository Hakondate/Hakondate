import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/foodstuff/foodstuff_model.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/util/common_function/common_function.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

part 'menus_local_repository.g.dart';

@Riverpod(keepAlive: true)
MenusLocalRepository menusLocalRepository(MenusLocalRepositoryRef ref) {
  final LocalDatabase localDatabase = ref.watch(localDatabaseProvider);
  return MenusLocalRepository(localDatabase, ref);
}

abstract class MenusLocalRepositoryAPI {
  Future<int> add(MenuModel menu);
  Future<List<MenuModel>> list();
  Future<MenuModel> getMenuByDay(DateTime day);
  Future<DateTime> getLatestUpdateDay();
  Future<int> deleteAll();
}

class MenusLocalRepository extends MenusLocalRepositoryAPI {
  MenusLocalRepository(this._db, this._ref);

  final LocalDatabase _db;
  final Ref _ref;

  @override
  Future<int> add(MenuModel menu) async {
    if (menu is! LunchesDayMenuModel) {
      throw const FormatException('Error: menu is not "LunchesDayMenuModel"');
    }

    final MenusTableCompanion companion = menu.toDrift();
    final int menuId = await _db.into(_db.menusTable).insert(
          companion,
          // ignore: always_specify_types
          onConflict: DoUpdate(
            ($MenusTableTable old) => MenusTableCompanion.custom(
              // ignore: always_specify_types
              event: Constant(companion.event.value),
              // ignore: always_specify_types
              updateAt: Constant(companion.updateAt.value),
            ),
          ),
        );

    await Future.forEach(menu.dishes, (DishModel dish) async {
      final int dishId = await _addDish(dish);

      if (companion.id.value != menuId) return companion.id.value;

      final MenuDishesTableCompanion menuDishesTableCompanion = MenuDishesTableCompanion(
        menuId: Value<int>(menuId),
        dishId: Value<int>(dishId),
      );

      await _db.into(_db.menuDishesTable).insert(
            menuDishesTableCompanion,
            // ignore: always_specify_types
            onConflict: DoUpdate(
              (_) => menuDishesTableCompanion,
              target: <Column<Object>>[
                _db.menuDishesTable.menuId,
                _db.menuDishesTable.dishId,
              ],
            ),
          );
    });

    return menuId;
  }

  Future<int> _addDish(DishModel dish) async {
    final DishesTableCompanion companion = dish.toDrift();
    final DishesSchema? conflictSchema =
        await (_db.select(_db.dishesTable)..where(($DishesTableTable t) => t.name.equals(companion.name.value))).getSingleOrNull();

    final int dishId;
    if (conflictSchema == null) {
      dishId = await _db.into(_db.dishesTable).insert(companion);
    } else if (conflictSchema.category != companion.category.value) {
      dishId = await (_db.update(_db.dishesTable)
            ..where(
              ($DishesTableTable t) => t.name.equals(companion.name.value),
            ))
          .write(DishesTableCompanion(category: companion.category));
    } else {
      dishId = conflictSchema.id;
    }

    await Future.forEach(dish.foodstuffs, (FoodstuffModel foodstuff) async {
      final int foodstuffId = await _addFoodstuff(foodstuff);
      final DishFoodstuffsTableCompanion dishFoodstuffsSchema = DishFoodstuffsTableCompanion(
        dishId: Value<int>(dishId),
        foodstuffId: Value<int>(foodstuffId),
      );
      await _db.into(_db.dishFoodstuffsTable).insert(
            dishFoodstuffsSchema,
            // ignore: always_specify_types
            onConflict: DoUpdate(
              (_) => dishFoodstuffsSchema,
              target: <Column<Object>>[
                _db.dishFoodstuffsTable.dishId,
                _db.dishFoodstuffsTable.foodstuffId,
              ],
            ),
          );
      await _db.into(_db.dishFoodstuffsTable).insertOnConflictUpdate(
            DishFoodstuffsTableCompanion(
              dishId: Value<int>(dishId),
              foodstuffId: Value<int>(foodstuffId),
            ),
          );
    });

    return dishId;
  }

  Future<int> _addFoodstuff(FoodstuffModel foodstuff) async {
    final FoodstuffsTableCompanion companion = foodstuff.toDrift();
    final FoodstuffsSchema? conflictSchema = await (_db.select(_db.foodstuffsTable)
          ..where(
            ($FoodstuffsTableTable t) =>
                t.name.equals(companion.name.value) &
                t.gram.equals(companion.gram.value) &
                t.isHeat.equals(companion.isHeat.value) &
                t.isAllergy.equals(companion.isAllergy.value),
          ))
        .getSingleOrNull();

    if (conflictSchema == null) {
      return _db.into(_db.foodstuffsTable).insert(companion);
    } else if (conflictSchema.pieceNumber != companion.pieceNumber.value ||
        conflictSchema.pieceUnit != companion.pieceUnit.value ||
        conflictSchema.energy != companion.energy.value ||
        conflictSchema.protein != companion.protein.value ||
        conflictSchema.lipid != companion.lipid.value ||
        conflictSchema.sodium != companion.sodium.value ||
        conflictSchema.carbohydrate != companion.carbohydrate.value ||
        conflictSchema.calcium != companion.calcium.value ||
        conflictSchema.magnesium != companion.magnesium.value ||
        conflictSchema.iron != companion.iron.value ||
        conflictSchema.zinc != companion.zinc.value ||
        conflictSchema.retinol != companion.retinol.value ||
        conflictSchema.vitaminB1 != companion.vitaminB1.value ||
        conflictSchema.vitaminB2 != companion.vitaminB2.value ||
        conflictSchema.vitaminC != companion.vitaminC.value ||
        conflictSchema.dietaryFiber != companion.dietaryFiber.value ||
        conflictSchema.salt != companion.salt.value ||
        conflictSchema.origin != companion.origin.value) {
      await (_db.update(_db.foodstuffsTable)
            ..where(
              ($FoodstuffsTableTable t) =>
                  t.name.equals(companion.name.value) &
                  t.gram.equals(companion.gram.value) &
                  t.isHeat.equals(companion.isHeat.value) &
                  t.isAllergy.equals(companion.isAllergy.value),
            ))
          .write(
        FoodstuffsTableCompanion(
          pieceNumber: companion.pieceNumber,
          pieceUnit: companion.pieceUnit,
          energy: companion.energy,
          lipid: companion.lipid,
          sodium: companion.sodium,
          carbohydrate: companion.carbohydrate,
          calcium: companion.calcium,
          magnesium: companion.magnesium,
          iron: companion.iron,
          zinc: companion.zinc,
          retinol: companion.retinol,
          vitaminB1: companion.vitaminB1,
          vitaminB2: companion.vitaminB2,
          vitaminC: companion.vitaminC,
          dietaryFiber: companion.dietaryFiber,
          salt: companion.salt,
          origin: companion.origin,
        ),
      );

      return conflictSchema.id;
    }

    return conflictSchema.id;
  }

  @override
  Future<List<MenuModel>> list() async {
    final List<MenuModel> menus = <MenuModel>[];
    final int schoolId = await _ref.read(userViewModelProvider.notifier).getParentId();
    final List<MenusSchema> menusSchemas =
        await (_db.select(_db.menusTable)..where(($MenusTableTable t) => t.schoolId.equals(schoolId))).get();

    await Future.forEach(menusSchemas, (MenusSchema menusSchema) async {
      final MenuModel menu = await _getBySchema(menusSchema);
      menus.add(menu);
    });

    return menus;
  }

  @override
  Future<MenuModel> getMenuByDay(DateTime day) async {
    final int id = await _ref.read(commonFunctionProvider).getIdByDay(day);
    final MenuModel? menu = await _getMenuById(id);

    if (menu != null) return menu;

    final DateTime oldest = await _getOldestDay();
    final DateTime latest = await _getLatestDay();

    if (day.isAfter(oldest) && day.isBefore(latest)) {
      return const MenuModel.holiday();
    }

    return const MenuModel.noData();
  }

  Future<MenuModel?> _getMenuById(int id) async {
    final MenusSchema? menusSchema = await (_db.select(_db.menusTable)..where(($MenusTableTable t) => t.id.equals(id))).getSingleOrNull();

    return (menusSchema != null) ? _getBySchema(menusSchema) : null;
  }

  Future<DateTime> _getOldestDay() async {
    if (await _count() == 0) return DateTime.now();

    final int schoolId = await _ref.read(userViewModelProvider.notifier).getParentId();
    final Expression<DateTime> exp = _db.menusTable.day.min();
    final JoinedSelectStatement<$MenusTableTable, MenusSchema> query = _db.selectOnly(_db.menusTable)
      ..where(_db.menusTable.schoolId.equals(schoolId))
      ..addColumns(<Expression<DateTime>>[exp]);

    return await query.map((TypedResult scheme) => scheme.read(exp)).getSingle() ?? DateTime.now();
  }

  Future<DateTime> _getLatestDay() async {
    if (await _count() == 0) return DateTime.now();

    final int schoolId = await _ref.read(userViewModelProvider.notifier).getParentId();
    final Expression<DateTime> exp = _db.menusTable.day.max();
    final JoinedSelectStatement<$MenusTableTable, MenusSchema> query = _db.selectOnly(_db.menusTable)
      ..where(_db.menusTable.schoolId.equals(schoolId))
      ..addColumns(<Expression<DateTime>>[exp]);

    return await query.map((TypedResult scheme) => scheme.read(exp)).getSingle() ?? DateTime.now();
  }

  Future<MenuModel> _getBySchema(MenusSchema menusSchema) async {
    final List<DishModel> dishes = <DishModel>[];
    final List<MenuDishesSchema> menuDishesSchemas =
        await (_db.select(_db.menuDishesTable)..where(($MenuDishesTableTable t) => t.menuId.equals(menusSchema.id))).get();

    await Future.forEach(menuDishesSchemas, (MenuDishesSchema menuDishesSchema) async {
      final DishModel dish = await _getDishById(menuDishesSchema.dishId);
      dishes.add(dish);
    });

    return MenuModel.fromDrift(menusSchema, dishes);
  }

  Future<DishModel> _getDishById(int dishId) async {
    final DishesSchema dishesSchema = await (_db.select(_db.dishesTable)..where(($DishesTableTable t) => t.id.equals(dishId))).getSingle();
    final List<FoodstuffModel> foodstuffs = <FoodstuffModel>[];
    final List<DishFoodstuffsSchema> dishFoodstuffsSchemas = await (_db.select(_db.dishFoodstuffsTable)
          ..where(
            ($DishFoodstuffsTableTable t) => t.dishId.equals(dishesSchema.id),
          ))
        .get();

    await Future.forEach(dishFoodstuffsSchemas, (DishFoodstuffsSchema dishFoodstuffsSchema) async {
      final FoodstuffModel foodstuff = await _getFoodstuffById(dishFoodstuffsSchema.foodstuffId);
      foodstuffs.add(foodstuff);
    });

    return DishModel.fromDrift(dishesSchema, foodstuffs);
  }

  Future<FoodstuffModel> _getFoodstuffById(int foodstuffId) async {
    final FoodstuffsSchema foodstuffsSchema =
        await (_db.select(_db.foodstuffsTable)..where(($FoodstuffsTableTable t) => t.id.equals(foodstuffId))).getSingle();

    return FoodstuffModel.fromDrift(foodstuffsSchema);
  }

  @override
  Future<DateTime> getLatestUpdateDay() async {
    if (await _count() == 0) return DateTime(1970);

    final int schoolId = await _ref.read(userViewModelProvider.notifier).getParentId();
    final Expression<DateTime> exp = _db.menusTable.updateAt.max();
    final JoinedSelectStatement<$MenusTableTable, MenusSchema> query = _db.selectOnly(_db.menusTable)
      ..where(_db.menusTable.schoolId.equals(schoolId))
      ..addColumns(<Expression<DateTime>>[exp]);

    return await query.map((TypedResult scheme) => scheme.read(exp)).getSingle() ?? DateTime(1970);
  }

  Future<int> _count() async {
    final int schoolId = await _ref.read(userViewModelProvider.notifier).getParentId();
    final Expression<int> exp = _db.menusTable.id.count();
    final JoinedSelectStatement<$MenusTableTable, MenusSchema> query = _db.selectOnly(_db.menusTable)
      ..where(_db.menusTable.schoolId.equals(schoolId))
      ..addColumns(<Expression<int>>[exp]);
    final int? count = await query.map((TypedResult scheme) => scheme.read(exp)).getSingleOrNull();

    return count ?? 0;
  }

  @override
  Future<int> deleteAll() => _db.delete(_db.menusTable).go();
}
