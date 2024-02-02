import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/model/quantity/quantity_model.dart';

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
}
