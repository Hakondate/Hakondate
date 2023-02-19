import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/foodstuff/foodstuff_model.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/model/quantity/quantity_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/view_model/multi_page/common_function.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';

final menusLocalRepositoryProvider = Provider<MenusLocalRepository>((ref) {
  final LocalDatabase localDatabase = ref.watch(localDatabaseProvider);
  return MenusLocalRepository(localDatabase, ref);
});

abstract class MenusLocalRepositoryBase {
  Future<int> add(Map<String, dynamic> menu);
  Future<List<MenuModel>> getAll();
  Future<MenuModel> getMenuByDay(DateTime day);
  Future<DateTime> getLatestUpdateDay();
  Future<int> deleteAll();
}

class MenusLocalRepository extends MenusLocalRepositoryBase {
  MenusLocalRepository(this._db, this._ref);

  final LocalDatabase _db;
  final Ref _ref;

  @override
  Future<int> add(Map<String, dynamic> menu) async {
    final MenusTableCompanion companion = MenusTableCompanion(
      id: Value(menu['id']),
      day: Value(_ref.read(commonFunctionProvider.notifier).getDayFromTimestamp(menu['day'])),
      schoolId: Value(menu['schoolId']),
      event: Value(menu['event']),
      updateAt: Value(_ref.read(commonFunctionProvider.notifier).getDayFromTimestamp(menu['updateAt'])),
    );
    final int menuId = await _db.into(_db.menusTable).insert(
      companion,
      onConflict: DoUpdate((old) => MenusTableCompanion.custom(
        event: Constant(companion.event.value),
        updateAt: Constant(companion.updateAt.value),
      )),
    );

    await Future.forEach(menu['dishes'], (dynamic dish) async {
      final int dishId = await _addDish(dish);
      await _db.into(_db.menuDishesTable).insertOnConflictUpdate(
          MenuDishesTableCompanion(
            menuId: Value(menuId),
            dishId: Value(dishId),
          ));
    });

    return menuId;
  }

  Future<int> _addDish(Map<String, dynamic> dish) async {
    final int dishId;
    final DishesTableCompanion companion = DishesTableCompanion(
      name: Value(dish['name']),
      category: Value(dish['category']),
    );
    final DishesSchema? conflictSchema = await (_db.select(_db.dishesTable)
      ..where((t) => t.name.equals(companion.name.value))).getSingleOrNull();

    if (conflictSchema == null) {
      dishId = await _db.into(_db.dishesTable).insert(
        companion,
        onConflict: DoUpdate((old) => DishesTableCompanion.custom(
          category: Constant(companion.category.value),
        )),
      );
    } else if (conflictSchema.category != companion.category.value) {
      dishId = await (_db.update(_db.dishesTable)
        ..where((t) => t.name.equals(companion.name.value)))
          .write(DishesTableCompanion(category: companion.category));
    } else {
      dishId = conflictSchema.id;
    }

    await Future.forEach(dish['foodstuffs'], (dynamic foodstuff) async {
      final int foodstuffId = await _addFoodstuff(foodstuff);
      await _db.into(_db.dishFoodstuffsTable).insertOnConflictUpdate(
          DishFoodstuffsTableCompanion(
            dishId: Value(dishId),
            foodstuffId: Value(foodstuffId),
          ));
    });

    return dishId;
  }

  Future<int> _addFoodstuff(Map<String, dynamic> foodstuff) async {
    final FoodstuffsTableCompanion companion = FoodstuffsTableCompanion(
      name: Value(foodstuff['name']),
      piece: Value(foodstuff['piece']),
      gram: Value(foodstuff['gram'].toDouble()),
      energy: Value(foodstuff['energy'].toDouble()),
      protein: Value(foodstuff['protein'].toDouble()),
      lipid: Value(foodstuff['lipid'].toDouble()),
      carbohydrate: Value(foodstuff['carbohydrate'].toDouble()),
      sodium: Value(foodstuff['sodium'].toDouble()),
      calcium: Value(foodstuff['calcium'].toDouble()),
      magnesium: Value(foodstuff['magnesium'].toDouble()),
      iron: Value(foodstuff['iron'].toDouble()),
      zinc: Value(foodstuff['zinc'].toDouble()),
      retinol: Value(foodstuff['retinol'].toDouble()),
      vitaminB1: Value(foodstuff['vitaminB1'].toDouble()),
      vitaminB2: Value(foodstuff['vitaminB2'].toDouble()),
      vitaminC: Value(foodstuff['vitaminC'].toDouble()),
      dietaryFiber: Value(foodstuff['dietaryFiber'].toDouble()),
      salt: Value(foodstuff['salt'].toDouble()),
      isHeat: Value(foodstuff['isHeat']),
      isAllergy: Value(foodstuff['isAllergy']),
      origin: Value(foodstuff['origin']),
    );
    final FoodstuffsSchema? conflictSchema =
      await (_db.select(_db.foodstuffsTable)..where((t) =>
          t.name.equals(companion.name.value) &
          t.gram.equals(companion.gram.value) &
          t.isHeat.equals(companion.isHeat.value) &
          t.isAllergy.equals(companion.isAllergy.value))).getSingleOrNull();

    if (conflictSchema == null) {
      return await _db.into(_db.foodstuffsTable).insert(
        companion,
        onConflict: DoUpdate((old) => FoodstuffsTableCompanion.custom(
          origin: Constant(companion.origin.value),
        )),
      );
    } else if (
        conflictSchema.piece != companion.piece.value ||
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
        conflictSchema.origin != companion.origin.value
    ) {
      return await (_db.update(_db.foodstuffsTable)..where((t) =>
        t.name.equals(companion.name.value) &
        t.gram.equals(companion.gram.value) &
        t.isHeat.equals(companion.isHeat.value) &
        t.isAllergy.equals(companion.isAllergy.value))).write(
          FoodstuffsTableCompanion(
            piece: companion.piece,
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
          ));
    }

    return conflictSchema.id;
  }

  @override
  Future<List<MenuModel>> getAll() async {
    List<MenuModel> menus = [];
    final int schoolId = await _ref.read(userProvider.notifier).getParentId();
    final List<MenusSchema> menusSchemas = await (_db.select(_db.menusTable)
      ..where((t) => t.schoolId.equals(schoolId))).get();

    await Future.forEach(menusSchemas, (MenusSchema menusSchema) async {
      final MenuModel menu = await _getBySchema(menusSchema);
      menus.add(menu);
    });

    return menus;
  }

  @override
  Future<MenuModel> getMenuByDay(DateTime day) async {
    final int id = await _ref.read(commonFunctionProvider.notifier).getIdByDay(day);
    final MenuModel? menu = await _getMenuById(id);

    if (menu != null) return menu;

    final DateTime oldest = await _getOldestDay();
    final DateTime latest = await _getLatestDay();

    if (day.isAfter(oldest) && day.isBefore(latest)) return const MenuModel.holiday();

    return const MenuModel.noData();
  }

  Future<MenuModel?> _getMenuById(int id) async {
    final MenusSchema? menusSchema = await (_db.select(_db.menusTable)
      ..where((t) => t.id.equals(id))).getSingleOrNull();

    return (menusSchema != null) ? _getBySchema(menusSchema) : null;
  }

  Future<DateTime> _getOldestDay() async {
    if (await _count() == 0) return DateTime.now();

    final int schoolId = await _ref.read(userProvider.notifier).getParentId();
    final Expression<DateTime> exp = _db.menusTable.day.min();
    final query = _db.selectOnly(_db.menusTable)
      ..where(_db.menusTable.schoolId.equals(schoolId))
      ..addColumns([exp]);

    return await query.map((scheme) => scheme.read(exp)).getSingle() ?? DateTime.now();
  }

  Future<DateTime> _getLatestDay() async {
    if (await _count() == 0) return DateTime.now();

    final int schoolId = await _ref.read(userProvider.notifier).getParentId();
    final Expression<DateTime> exp = _db.menusTable.day.max();
    final query = _db.selectOnly(_db.menusTable)
      ..where(_db.menusTable.schoolId.equals(schoolId))
      ..addColumns([exp]);

    return await query.map((scheme) => scheme.read(exp)).getSingle() ?? DateTime.now();
  }

  Future<MenuModel> _getBySchema(MenusSchema menusSchema) async {
    List<DishModel> dishes = [];
    final List<MenuDishesSchema> menuDishesSchemas =
        await (_db.select(_db.menuDishesTable)..where((t) => t.menuId.equals(menusSchema.id))).get();

    await Future.forEach(menuDishesSchemas, (MenuDishesSchema menuDishesSchema) async {
      final DishModel dish = await _getDishById(menuDishesSchema.dishId);
      dishes.add(dish);
    });

    return MenuModel(
      id: menusSchema.id,
      day: menusSchema.day,
      schoolId: menusSchema.schoolId,
      dishes: dishes,
      event: menusSchema.event,
    );
  }

  Future<DishModel> _getDishById(int dishId) async {
    final DishesSchema dishesSchema = await (_db.select(_db.dishesTable)
      ..where((t) => t.id.equals(dishId))).getSingle();
    List<FoodstuffModel> foodstuffs = [];
    final List<DishFoodstuffsSchema> dishFoodstuffsSchemas = await (_db.select(_db.dishFoodstuffsTable)
      ..where((t) => t.dishId.equals(dishesSchema.id))).get();

    await Future.forEach(dishFoodstuffsSchemas, (DishFoodstuffsSchema dishFoodstuffsSchema) async {
      final FoodstuffModel foodstuff = await _getFoodstuffById(dishFoodstuffsSchema.foodstuffId);
      foodstuffs.add(foodstuff);
    });

    switch (dishesSchema.category) {
      case 'main':
        return DishModel(
          name: dishesSchema.name,
          foodstuffs: foodstuffs,
          category: DishCategory.main,
        );
      case 'drink':
        return DishModel(
          name: dishesSchema.name,
          foodstuffs: foodstuffs,
          category: DishCategory.drink,
        );
      case 'side':
        return DishModel(
          name: dishesSchema.name,
          foodstuffs: foodstuffs,
          category: DishCategory.side,
        );
      default:
        return DishModel(
          name: dishesSchema.name,
          foodstuffs: foodstuffs,
          category: null,
        );
    }
  }

  Future<FoodstuffModel> _getFoodstuffById(int foodstuffId) async {
    final FoodstuffsSchema foodstuffsSchema =
        await (_db.select(_db.foodstuffsTable)..where((t) => t.id.equals(foodstuffId))).getSingle();

    return FoodstuffModel(
      name: foodstuffsSchema.name,
      quantity: QuantityModel(
        piece: foodstuffsSchema.piece,
        gram: foodstuffsSchema.gram,
      ),
      nutrients: NutrientsModel(
        energy: foodstuffsSchema.energy,
        protein: foodstuffsSchema.protein,
        lipid: foodstuffsSchema.lipid,
        carbohydrate: foodstuffsSchema.carbohydrate,
        sodium: foodstuffsSchema.sodium,
        calcium: foodstuffsSchema.calcium,
        magnesium: foodstuffsSchema.magnesium,
        iron: foodstuffsSchema.iron,
        zinc: foodstuffsSchema.zinc,
        retinol: foodstuffsSchema.retinol,
        vitaminB1: foodstuffsSchema.vitaminB1,
        vitaminB2: foodstuffsSchema.vitaminB2,
        vitaminC: foodstuffsSchema.vitaminC,
        dietaryFiber: foodstuffsSchema.dietaryFiber,
        salt: foodstuffsSchema.salt,
      ),
      isAllergy: foodstuffsSchema.isAllergy,
      isHeat: foodstuffsSchema.isHeat,
      origin: foodstuffsSchema.origin,
    );
  }

  @override
  Future<DateTime> getLatestUpdateDay() async {
    if (await _count() == 0) return DateTime(1970);

    final int schoolId = await _ref.read(userProvider.notifier).getParentId();
    final Expression<DateTime> exp = _db.menusTable.updateAt.max();
    final query = _db.selectOnly(_db.menusTable)
      ..where(_db.menusTable.schoolId.equals(schoolId))
      ..addColumns([exp]);

    return await query.map((scheme) => scheme.read(exp)).getSingle() ?? DateTime(1970);
  }

  Future<int> _count() async {
    final int schoolId = await _ref.read(userProvider.notifier).getParentId();
    final Expression<int> exp = _db.menusTable.id.count();
    final query = _db.selectOnly(_db.menusTable)
      ..where(_db.menusTable.schoolId.equals(schoolId))
      ..addColumns([exp]);
    final int? count = await query.map((scheme) => scheme.read(exp)).getSingleOrNull();

    return count ?? 0;
  }

  @override
  Future<int> deleteAll() => _db.delete(_db.menusTable).go();
}
