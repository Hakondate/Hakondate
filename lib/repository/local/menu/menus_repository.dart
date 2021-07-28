import 'package:hakondate_v2/model/dish/dish_model.dart';
import 'package:hakondate_v2/model/foodstuff/foodstuff_model.dart';
import 'package:hakondate_v2/model/menu/menu_model.dart';
import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';
import 'package:hakondate_v2/model/quantity/quantity_model.dart';
import 'package:hakondate_v2/model/school/school_model.dart';
import 'package:hakondate_v2/repository/local/menu/menus_database.dart';

class MenusRepository {
  MenusRepository() {
    this.repository = MenusDatabase();
  }

  late final MenusDatabase repository;

  Future<List<MenuModel>> getAllMenus() async {
    List<MenuModel> _menus = [];
    final List<MenusSchema> _menusSchemas = await repository.allMenusSchemas;
    await Future.forEach(_menusSchemas, (MenusSchema menusSchema) async {
      final MenuModel _menu = await getMenuById(menusSchema.id);
      _menus.add(_menu);
    });

    return _menus;
  }

  Future<MenuModel> getMenuById(int menuId) async {
    final MenusSchema _menusSchema = await repository.getMenusSchemaById(menuId);
    final SchoolsSchema _schoolsSchema = await repository.getSchoolsSchemaById(_menusSchema.schoolId);

    List<DishModel> _dishes = [];
    final List<MenuDishesSchema> _menuDishesSchemas = await repository.getMenuDishesSchemasByMenuId(_menusSchema.id);
    await Future.forEach(_menuDishesSchemas, (MenuDishesSchema menuDishesSchema) async {
      final DishModel _dish = await _getDishById(menuDishesSchema.dishId);
      _dishes.add(_dish);
    });

    return MenuModel(
      id: _menusSchema.id,
      day: DateTime.fromMillisecondsSinceEpoch(_menusSchema.day),
      school: SchoolModel(
        name: _schoolsSchema.name,
        lunchBlock: _schoolsSchema.lunchBlock,
        classification: _schoolsSchema.classification
      ),
      dishes: _dishes
    );
  }

  Future<DishModel> _getDishById(int dishId) async {
    final DishesSchema _dishesSchema = await repository.getDishesSchemaById(dishId);

    List<FoodstuffModel> _foodstuffs = [];
    final List<DishFoodstuffsSchema> _dishFoodstuffsSchemas = await repository.getDishFoodstuffsSchemasByDishId(_dishesSchema.id);
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
    final FoodstuffsSchema _foodstuffsSchema = await repository.getFoodstuffsSchemaById(foodstuffId);
    final FoodsSchema _foodsSchema = await repository.getFoodsSchemaById(_foodstuffsSchema.foodId);

    return FoodstuffModel(
      name: _foodsSchema.name,
      quantity: QuantityModel(
        piece: _foodstuffsSchema.piece,
        gram: _foodstuffsSchema.gram
      ),
      nutrients: NutrientsModel(
        energy: _foodsSchema.energy,
        protein: _foodsSchema.protein,
        lipid: _foodsSchema.lipid,
        carbohydrate: _foodsSchema.carbohydrate,
        sodium: _foodsSchema.sodium,
        calcium: _foodsSchema.calcium,
        magnesium: _foodsSchema.magnesium,
        iron: _foodsSchema.iron,
        zinc: _foodsSchema.zinc,
        retinol: _foodsSchema.retinol,
        vitaminB1: _foodsSchema.vitaminB1,
        vitaminB2: _foodsSchema.vitaminB2,
        vitaminC: _foodsSchema.vitaminC,
        dietaryFiber: _foodsSchema.dietaryFiber,
        salt: _foodsSchema.salt
      ),
      isAllergy: _foodsSchema.isAllergy,
      isHeat: _foodsSchema.isHeat
    );
  }
}