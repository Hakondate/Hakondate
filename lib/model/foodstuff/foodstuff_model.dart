import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/model/piece/piece_model.dart';
import 'package:hakondate/model/quantity/quantity_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';

part 'foodstuff_model.freezed.dart';

@freezed
class FoodstuffModel with _$FoodstuffModel {
  const factory FoodstuffModel({
    /// 食材名
    required String name,

    /// 分量
    required QuantityModel quantity,

    /// 栄養素
    required NutrientsModel nutrients,

    /// アレルギー食品
    @Default(false) bool isAllergy,

    /// 熱加工食品
    @Default(false) bool isHeat,

    /// 原産地
    String? origin,
  }) = _FoodstuffModel;
  const FoodstuffModel._();

  factory FoodstuffModel.fromFirestore(Map<String, dynamic> data) {
    return FoodstuffModel(
      name: data['name'] as String,
      quantity: QuantityModel.fromFirestore(data),
      nutrients: NutrientsModel(
        energy: double.parse(data['energy'].toString()),
        protein: double.parse(data['protein'].toString()),
        lipid: double.parse(data['lipid'].toString()),
        carbohydrate: double.parse(data['carbohydrate'].toString()),
        sodium: double.parse(data['sodium'].toString()),
        calcium: double.parse(data['calcium'].toString()),
        magnesium: double.parse(data['magnesium'].toString()),
        iron: double.parse(data['iron'].toString()),
        zinc: double.parse(data['zinc'].toString()),
        retinol: double.parse(data['retinol'].toString()),
        vitaminB1: double.parse(data['vitaminB1'].toString()),
        vitaminB2: double.parse(data['vitaminB2'].toString()),
        vitaminC: double.parse(data['vitaminC'].toString()),
        dietaryFiber: double.parse(data['dietaryFiber'].toString()),
        salt: double.parse(data['salt'].toString()),
      ),
      isAllergy: data['isAllergy'] as bool? ?? false,
      isHeat: data['isHeat'] as bool? ?? false,
      origin: data['origin'] as String?,
    );
  }

  factory FoodstuffModel.fromDrift(FoodstuffsSchema schema) => FoodstuffModel(
    name: schema.name,
    quantity: QuantityModel(
      piece: schema.pieceNumber == null ? null : PieceModel(
        number: schema.pieceNumber!,
        unit: schema.pieceUnit!,
      ),
      gram: schema.gram,
    ),
    nutrients: NutrientsModel(
      energy: schema.energy,
      protein: schema.protein,
      lipid: schema.lipid,
      carbohydrate: schema.carbohydrate,
      sodium: schema.sodium,
      calcium: schema.calcium,
      magnesium: schema.magnesium,
      iron: schema.iron,
      zinc: schema.zinc,
      retinol: schema.retinol,
      vitaminB1: schema.vitaminB1,
      vitaminB2: schema.vitaminB2,
      vitaminC: schema.vitaminC,
      dietaryFiber: schema.dietaryFiber,
      salt: schema.salt,
    ),
    isAllergy: schema.isAllergy,
    isHeat: schema.isHeat,
    origin: schema.origin,
  );

  Map<String, Object> toFirestore() => <String, Object>{
    'name': name,
    if (quantity.piece != null) 'piece': quantity.piece!,
    'gram': quantity.gram,
    'energy': nutrients.energy,
    'protein': nutrients.protein,
    'lipid': nutrients.lipid,
    'carbohydrate': nutrients.carbohydrate,
    'sodium': nutrients.sodium,
    'calcium': nutrients.calcium,
    'magnesium': nutrients.magnesium,
    'iron': nutrients.iron,
    'zinc': nutrients.zinc,
    'retinol': nutrients.retinol,
    'vitaminB1': nutrients.vitaminB1,
    'vitaminB2': nutrients.vitaminB2,
    'vitaminC': nutrients.vitaminC,
    'dietaryFiber': nutrients.dietaryFiber,
    'salt': nutrients.salt,
    'isAllergy': isAllergy,
    'isHeat': isHeat,
    if (origin != null) 'origin': origin!,
  };

  FoodstuffsTableCompanion toDrift() => FoodstuffsTableCompanion(
    name: Value<String>(name),
    pieceNumber: Value<double?>(quantity.piece?.number),
    pieceUnit: Value<String?>(quantity.piece?.unit),
    gram: Value<double>(quantity.gram),
    energy: Value<double>(nutrients.energy),
    protein: Value<double>(nutrients.protein),
    lipid: Value<double>(nutrients.lipid),
    carbohydrate: Value<double>(nutrients.carbohydrate),
    sodium: Value<double>(nutrients.sodium),
    calcium: Value<double>(nutrients.calcium),
    magnesium: Value<double>(nutrients.magnesium),
    iron: Value<double>(nutrients.iron),
    zinc: Value<double>(nutrients.zinc),
    retinol: Value<double>(nutrients.retinol),
    vitaminB1: Value<double>(nutrients.vitaminB1),
    vitaminB2: Value<double>(nutrients.vitaminB2),
    vitaminC: Value<double>(nutrients.vitaminC),
    dietaryFiber: Value<double>(nutrients.dietaryFiber),
    salt: Value<double>(nutrients.salt),
    isAllergy: Value<bool>(isAllergy),
    isHeat: Value<bool>(isHeat),
    origin: Value<String?>(origin),
  );
}
