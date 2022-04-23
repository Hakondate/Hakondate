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
}
