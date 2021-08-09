import 'package:hakondate_v2/model/dish/dish_model.dart';
import 'package:hakondate_v2/model/foodstuff/foodstuff_model.dart';
import 'package:hakondate_v2/model/menu/menu_model.dart';
import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';
import 'package:hakondate_v2/model/quantity/quantity_model.dart';
import 'package:hakondate_v2/model/school/school_model.dart';
import 'package:hakondate_v2/repository/local/database_manager.dart';
import 'package:moor/moor.dart';

class MenusRepository {
  MenusRepository() {
    this._databaseManager = DatabaseManager();
  }

  late final DatabaseManager _databaseManager;

  // Future<void> addMenu(MenuModel menu) async {
  //   final int _id =
  //       menu.day.year * 100000000 +
  //       menu.day.month * 10000 +
  //       menu.day.day * 100 +
  //       menu.school.id;
  //
  //   final SchoolsTableCompanion _schoolSchema = SchoolsTableCompanion(
  //     name: Value(menu.school.name),
  //     lunchBlock: Value(menu.school.id),
  //     classification: Value(menu.school.classification ?? 0)
  //   );
  //   final int _schoolId = await _repository.addSchoolsSchema(_schoolSchema);
  //
  //   final MenusTableCompanion _menuSchema = MenusTableCompanion(
  //     id: Value(_id),
  //     day: Value(menu.day),
  //     schoolId: Value(_schoolId)
  //   );
  //   final int _menuId = await _repository.addMenusSchema(_menuSchema);
  //
  //   await Future.forEach(menu.dishes, (DishModel dish) async {
  //     final int _dishId = await _addDish(dish);
  //     await _repository.addMenuDishesSchema(
  //       MenuDishesTableCompanion(
  //         menuId: Value(_menuId),
  //         dishId: Value(_dishId)
  //       )
  //     );
  //   });
  // }
  //
  // Future<int> _addDish(DishModel dish) async {
  //   final DishesTableCompanion _dishSchema = DishesTableCompanion(
  //     name: Value(dish.name),
  //     category: Value(dish.category)
  //   );
  //   final int _dishId = await _repository.addDishesSchema(_dishSchema);
  //   await Future.forEach(dish.foodstuffs, (FoodstuffModel foodstuff) async {
  //     final int _foodstuffId = await _addFoodstuff(foodstuff);
  //     await _repository.addDishFoodstuffsSchema(
  //       DishFoodstuffsTableCompanion(
  //         dishId: Value(_dishId),
  //         foodstuffId: Value(_foodstuffId)
  //       )
  //     );
  //   });
  //
  //   return _dishId;
  // }
  //
  // Future<int> _addFoodstuff(FoodstuffModel foodstuff) async {
  //   final FoodstuffsTableCompanion _foodstuffSchema = FoodstuffsTableCompanion(
  //     name: Value(foodstuff.name),
  //     piece: Value(foodstuff.quantity.piece),
  //     gram: Value(foodstuff.quantity.gram),
  //     energy: Value(foodstuff.nutrients.energy),
  //     protein: Value(foodstuff.nutrients.protein),
  //     lipid: Value(foodstuff.nutrients.lipid),
  //     carbohydrate: Value(foodstuff.nutrients.carbohydrate),
  //     sodium: Value(foodstuff.nutrients.sodium),
  //     calcium: Value(foodstuff.nutrients.calcium),
  //     magnesium: Value(foodstuff.nutrients.magnesium),
  //     iron: Value(foodstuff.nutrients.iron),
  //     zinc: Value(foodstuff.nutrients.zinc),
  //     retinol: Value(foodstuff.nutrients.retinol),
  //     vitaminB1: Value(foodstuff.nutrients.vitaminB1),
  //     vitaminB2: Value(foodstuff.nutrients.vitaminB2),
  //     vitaminC: Value(foodstuff.nutrients.vitaminC),
  //     dietaryFiber: Value(foodstuff.nutrients.dietaryFiber),
  //     salt: Value(foodstuff.nutrients.salt),
  //     isHeat: Value(foodstuff.isHeat),
  //     isAllergy: Value(foodstuff.isAllergy)
  //   );
  //   return await _repository.addFoodstuffsSchema(_foodstuffSchema);
  // }

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
    // final SchoolsSchema _schoolsSchema = await _repository.getSchoolsSchemaById(_menusSchema.schoolId);

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
      isHeat: _foodstuffsSchema.isHeat
    );
  }
}