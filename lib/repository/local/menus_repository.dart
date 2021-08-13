import 'package:hakondate_v2/model/dish/dish_model.dart';
import 'package:hakondate_v2/model/foodstuff/foodstuff_model.dart';
import 'package:hakondate_v2/model/menu/menu_model.dart';
import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';
import 'package:hakondate_v2/model/quantity/quantity_model.dart';
import 'package:hakondate_v2/repository/local/database_manager.dart';
import 'package:moor/moor.dart';

class MenusRepository {
  MenusRepository() {
    this._databaseManager = DatabaseManager();
  }

  late final DatabaseManager _databaseManager;

  Future<int> addMenu(Map<String, dynamic> menu) async {
    // TODO: 各スキーマの競合の解決処理を書く(仕様がよくわからん)
    // KEYWORDS: UNIQUE制約 UPSERT
    final MenusTableCompanion _menusSchema = MenusTableCompanion(
      id: Value(menu['id']),
      day: Value(menu['day']),
      schoolId: Value(menu['schoolId']),
      event: Value(menu['event'])
    );
    final int _menuId = await _databaseManager.addMenusSchema(_menusSchema);

    await Future.forEach(menu['dishes'], (Map<String, dynamic> dish) async {
      final int _dishId = await _addDish(dish);
      await _databaseManager.addMenuDishesSchema(
        MenuDishesTableCompanion(
          menuId: Value(_menuId),
          dishId: Value(_dishId)
        )
      );
    });

    return _menuId;
  }

  Future<int> _addDish(Map<String, dynamic> dish) async {
    final DishesTableCompanion _dishSchema = DishesTableCompanion(
      name: Value(dish['name']),
      category: Value(dish['category'])
    );
    final int _dishId = await _databaseManager.addDishesSchema(_dishSchema);

    await Future.forEach(dish['foodstuffs'], (Map<String, dynamic> foodstuff) async {
      final int _foodstuffId = await _addFoodstuff(foodstuff);
      await _databaseManager.addDishFoodstuffsSchema(
        DishFoodstuffsTableCompanion(
          dishId: Value(_dishId),
          foodstuffId: Value(_foodstuffId)
        )
      );
    });

    return _dishId;
  }

  Future<int> _addFoodstuff(Map<String, dynamic> foodstuff) async {
    return await _databaseManager.addFoodstuffsSchema(
      FoodstuffsTableCompanion(
        name: Value(foodstuff['name']),
        piece: Value(foodstuff['piece']),
        gram: Value(foodstuff['gram']),
        energy: Value(foodstuff['energy']),
        protein: Value(foodstuff['protein']),
        lipid: Value(foodstuff['lipid']),
        carbohydrate: Value(foodstuff['carbohydrate']),
        sodium: Value(foodstuff['sodium']),
        calcium: Value(foodstuff['calcium']),
        magnesium: Value(foodstuff['magnesium']),
        iron: Value(foodstuff['iron']),
        zinc: Value(foodstuff['zinc']),
        retinol: Value(foodstuff['retinol']),
        vitaminB1: Value(foodstuff['vitaminB1']),
        vitaminB2: Value(foodstuff['vitaminB2']),
        vitaminC: Value(foodstuff['vitaminC']),
        dietaryFiber: Value(foodstuff['dietaryFiber']),
        salt: Value(foodstuff['salt']),
        isHeat: Value(foodstuff['isHeat']),
        isAllergy: Value(foodstuff['isAllergy']),
        origin: Value(foodstuff['origin'])
      )
    );
  }

  Future<List<MenuModel>> getAllMenus() async {
    List<MenuModel> _menus = [];
    final List<MenusSchema> _menusSchemas = await _databaseManager.allMenusSchemas;
    await Future.forEach(_menusSchemas, (MenusSchema menusSchema) async {
      final MenuModel _menu = await _getMenuBySchema(menusSchema);
      _menus.add(_menu);
    });

    return _menus;
  }

  Future<List<MenuModel>> getSelectionPeriodMenus(DateTime startDay, DateTime endDay, int schoolId) async {
    List<MenuModel> _menus = [];
    final List<MenusSchema> _menusSchemas = await _databaseManager.getSelectionPeriodMenusSchemas(startDay, endDay, schoolId);
    await Future.forEach(_menusSchemas, (MenusSchema menusSchema) async {
      final MenuModel _menu = await _getMenuBySchema(menusSchema);
      _menus.add(_menu);
    });

    return _menus;
  }

  Future<MenuModel> getMenuById(int menuId) async {
    final MenusSchema _menusSchema = await _databaseManager.getMenusSchemaById(menuId);

    return _getMenuBySchema(_menusSchema);
  }

  Future<MenuModel> _getMenuBySchema(MenusSchema menusSchema) async {
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
        event: menusSchema.event
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
      category: _dishesSchema.category
    );
  }

  Future<FoodstuffModel> _getFoodstuffById(int foodstuffId) async {
    final FoodstuffsSchema _foodstuffsSchema = await _databaseManager.getFoodstuffsSchemaById(foodstuffId);

    return FoodstuffModel(
      name: _foodstuffsSchema.name,
      quantity: QuantityModel(
        piece: _foodstuffsSchema.piece,
        gram: _foodstuffsSchema.gram
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
        salt: _foodstuffsSchema.salt
      ),
      isAllergy: _foodstuffsSchema.isAllergy,
      isHeat: _foodstuffsSchema.isHeat,
      origin: _foodstuffsSchema.origin
    );
  }
}