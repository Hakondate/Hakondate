import 'package:moor/moor.dart';

import 'package:hakondate_v2/model/dish/dish_model.dart';
import 'package:hakondate_v2/model/foodstuff/foodstuff_model.dart';
import 'package:hakondate_v2/model/menu/menu_model.dart';
import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';
import 'package:hakondate_v2/model/quantity/quantity_model.dart';
import 'package:hakondate_v2/repository/local/database_manager.dart';

class MenusLocalRepository {
  MenusLocalRepository() {
    this._databaseManager = databaseManager;
  }

  late final DatabaseManager _databaseManager;

  Future<int> add(Map<String, dynamic> menu) async {
    final MenusTableCompanion _menusSchema = MenusTableCompanion(
      id: Value(menu['id']),
      day: Value(DateTime.fromMillisecondsSinceEpoch(menu['day'])),
      schoolId: Value(menu['schoolId']),
      event: Value(menu['event']),
    );
    final int _menuId = await _databaseManager.addMenusSchema(_menusSchema);

    await Future.forEach(menu['dishes'], (dynamic dish) async {
      final int _dishId = await _addDish(dish);
      await _databaseManager.addMenuDishesSchema(
          MenuDishesTableCompanion(
            menuId: Value(_menuId),
            dishId: Value(_dishId),
          ));
    });

    return _menuId;
  }

  Future<int> _addDish(Map<String, dynamic> dish) async {
    final DishesTableCompanion _dishSchema = DishesTableCompanion(
      name: Value(dish['name']),
      category: Value(dish['category']),
    );
    final int _dishId = await _databaseManager.addDishesSchema(_dishSchema);

    await Future.forEach(dish['foodstuffs'], (dynamic foodstuff) async {
      final int _foodstuffId = await _addFoodstuff(foodstuff);
      await _databaseManager.addDishFoodstuffsSchema(
          DishFoodstuffsTableCompanion(
            dishId: Value(_dishId),
            foodstuffId: Value(_foodstuffId),
          ));
    });

    return _dishId;
  }

  Future<int> _addFoodstuff(Map<String, dynamic> foodstuff) async {
    return await _databaseManager.addFoodstuffsSchema(FoodstuffsTableCompanion(
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
    ));
  }

  Future<List<MenuModel>> getAll() async {
    List<MenuModel> _menus = [];
    final List<MenusSchema> _menusSchemas = await _databaseManager.allMenusSchemas;
    await Future.forEach(_menusSchemas, (MenusSchema menusSchema) async {
      final MenuModel _menu = await _getBySchema(menusSchema);
      _menus.add(_menu);
    });

    return _menus;
  }

  Future<List<MenuModel>> getSelectionPeriod(DateTime startDay, DateTime endDay, int schoolId) async {
    List<MenuModel> _menus = [];
    final List<MenusSchema> _menusSchemas = await _databaseManager.getSelectionPeriodMenusSchemas(startDay, endDay, schoolId);
    await Future.forEach(_menusSchemas, (MenusSchema menusSchema) async {
      final MenuModel _menu = await _getBySchema(menusSchema);
      _menus.add(_menu);
    });

    return _menus;
  }

  Future<MenuModel> getById(int menuId) async {
    final MenusSchema _menusSchema = await _databaseManager.getMenusSchemaById(menuId);

    return _getBySchema(_menusSchema);
  }

  Future<MenuModel> _getBySchema(MenusSchema menusSchema) async {
    List<DishModel> _dishes = [];
    final List<MenuDishesSchema> _menuDishesSchemas = await _databaseManager.getMenuDishesSchemasByMenuId(menusSchema.id);
    await Future.forEach(_menuDishesSchemas, (MenuDishesSchema menuDishesSchema) async {
      final DishModel _dish = await _getDishById(menuDishesSchema.dishId);
      _dishes.add(_dish);
    });

    return MenuModel(
      id: menusSchema.id,
      day: menusSchema.day,
      schoolId: menusSchema.schoolId,
      dishes: _dishes,
      event: menusSchema.event,
    );
  }

  Future<DishModel> _getDishById(int dishId) async {
    final DishesSchema _dishesSchema = await _databaseManager.getDishesSchemaById(dishId);

    List<FoodstuffModel> _foodstuffs = [];
    final List<DishFoodstuffsSchema> _dishFoodstuffsSchemas = await _databaseManager.getDishFoodstuffsSchemasByDishId(_dishesSchema.id);
    await Future.forEach(_dishFoodstuffsSchemas, (DishFoodstuffsSchema dishFoodstuffsSchema) async {
      final FoodstuffModel _foodstuff = await _getFoodstuffById(dishFoodstuffsSchema.foodstuffId);
      _foodstuffs.add(_foodstuff);
    });

    return DishModel(
      name: _dishesSchema.name,
      foodstuffs: _foodstuffs,
      category: _dishesSchema.category,
    );
  }

  Future<FoodstuffModel> _getFoodstuffById(int foodstuffId) async {
    final FoodstuffsSchema _foodstuffsSchema = await _databaseManager.getFoodstuffsSchemaById(foodstuffId);

    return FoodstuffModel(
      name: _foodstuffsSchema.name,
      quantity: QuantityModel(
        piece: _foodstuffsSchema.piece,
        gram: _foodstuffsSchema.gram,
      ),
      nutrients: NutrientsModel(
        energy: _foodstuffsSchema.energy,
        protein: _foodstuffsSchema.protein,
        lipid: _foodstuffsSchema.lipid,
        carbohydrate: _foodstuffsSchema.carbohydrate,
        sodium: _foodstuffsSchema.sodium,
        calcium: _foodstuffsSchema.calcium,
        magnesium: _foodstuffsSchema.magnesium,
        iron: _foodstuffsSchema.iron,
        zinc: _foodstuffsSchema.zinc,
        retinol: _foodstuffsSchema.retinol,
        vitaminB1: _foodstuffsSchema.vitaminB1,
        vitaminB2: _foodstuffsSchema.vitaminB2,
        vitaminC: _foodstuffsSchema.vitaminC,
        dietaryFiber: _foodstuffsSchema.dietaryFiber,
        salt: _foodstuffsSchema.salt,
      ),
      isAllergy: _foodstuffsSchema.isAllergy,
      isHeat: _foodstuffsSchema.isHeat,
      origin: _foodstuffsSchema.origin,
    );
  }
}
