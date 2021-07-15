import 'package:json_annotation/json_annotation.dart';

part 'nutrients_model.g.dart';

@JsonSerializable()
class NutrientsModel {
  NutrientsModel({
    this.energy = 0.0,
    this.protein = 0.0,
    this.lipid = 0.0,
    this.carbohydrate = 0.0,
    this.sodium = 0.0,
    this.calcium = 0.0,
    this.magnesium = 0.0,
    this.iron = 0.0,
    this.zinc = 0.0,
    this.retinol = 0.0,
    this.vitaminB1 = 0.0,
    this.vitaminB2 = 0.0,
    this.vitaminC = 0.0,
    this.dietaryFiber = 0.0,
    this.salt = 0.0
  });

  factory NutrientsModel.fromJson(Map<String, dynamic> json) =>
      _$NutrientsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NutrientsModelToJson(this);

  final double energy;        // エネルギー
  final double protein;       // タンパク質
  final double lipid;         // 脂質
  final double carbohydrate;  // 炭水化物
  final double sodium;        // ナトリウム
  final double calcium;       // カルシウム
  final double magnesium;     // マグネシウム
  final double iron;          // 鉄分
  final double zinc;          // 亜鉛
  final double retinol;       // レチノール活性当量(ビタミンA)
  final double vitaminB1;     // ビタミンB1
  final double vitaminB2;     // ビタミンB2
  final double vitaminC;      // ビタミンC
  final double dietaryFiber;  // 食物繊維
  final double salt;          // 食塩相当量
}