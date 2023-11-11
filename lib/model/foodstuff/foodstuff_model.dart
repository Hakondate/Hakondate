import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/model/quantity/quantity_model.dart';

part 'foodstuff_model.freezed.dart';

@freezed
class FoodstuffModel with _$FoodstuffModel {
  const factory FoodstuffModel({
    required String name,               // 食材名
    required QuantityModel quantity,    // 分量
    required NutrientsModel nutrients,  // 栄養素
    @Default(false) bool isAllergy,     // アレルギー食品
    @Default(false) bool isHeat,        // 熱加工食品
    String? origin,                     // 原産地
  }) = _FoodstuffModel;

  factory FoodstuffModel.fromFirestore(Map<String, dynamic> data) {
    return FoodstuffModel(
      name: data['name'] as String,
      quantity: QuantityModel(
        piece: data['piece'] as int?,
        gram: data['gram'] as double? ?? 0.0,
      ),
      nutrients: NutrientsModel(
        energy: data['energy'] as double? ?? 0.0,
        protein: data['protein'] as double? ?? 0.0,
        lipid: data['lipid'] as double? ?? 0.0,
        carbohydrate: data['carbohydrate'] as double? ?? 0.0,
        sodium: data['sodium'] as double? ?? 0.0,
        calcium: data['calcium'] as double? ?? 0.0,
        magnesium: data['magnesium'] as double? ?? 0.0,
        iron: data['iron'] as double? ?? 0.0,
        zinc: data['zinc'] as double? ?? 0.0,
        retinol: data['retinol'] as double? ?? 0.0,
        vitaminB1: data['vitaminB1'] as double? ?? 0.0,
        vitaminB2: data['vitaminB2'] as double? ?? 0.0,
        vitaminC: data['vitaminC'] as double? ?? 0.0,
        dietaryFiber: data['dietaryFiber'] as double? ?? 0.0,
        salt: data['salt'] as double? ?? 0.0,
      ),
      isAllergy: data['isAllergy'] as bool? ?? false,
      isHeat: data['isHeat'] as bool? ?? false,
      origin: data['origin'] as String?,
    );
  }

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
}
