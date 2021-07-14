import 'package:json_annotation/json_annotation.dart';

import 'package:hakondate_v2/model/foodstuff/foodstuff_model.dart';

part 'dish_model.g.dart';

@JsonSerializable()
class DishModel {
  DishModel({
    required this.name,
    required this.foodstuffs,
    this.category
  });

  factory DishModel.fromJson(Map<String, dynamic> json) =>
      _$DishModelFromJson(json);
  Map<String, dynamic> toJson() => _$DishModelToJson(this);

  final String name;                      // 料理名
  final List<FoodstuffModel> foodstuffs;  // 食材
  final String? category;                 // 分類
}