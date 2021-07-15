import 'package:json_annotation/json_annotation.dart';

import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';
import 'package:hakondate_v2/model/quantity/quantity_model.dart';

part 'foodstuff_model.g.dart';

@JsonSerializable()
class FoodstuffModel {
  FoodstuffModel({
    required this.name,
    required this.quantity,
    required this.nutrients,
    this.isAllergy = false,
    this.isHeat = false
  });

  factory FoodstuffModel.fromJson(Map<String, dynamic> json) =>
      _$FoodstuffModelFromJson(json);
  Map<String, dynamic> toJson() => _$FoodstuffModelToJson(this);

  final String name;              // 食材名
  final QuantityModel quantity;   // 分量
  final NutrientsModel nutrients; // 栄養素
  final bool isAllergy;           // アレルギー食品
  final bool isHeat;              // 熱加工食品
}