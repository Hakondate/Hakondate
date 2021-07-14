// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodstuff_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodstuffModel _$FoodstuffModelFromJson(Map<String, dynamic> json) {
  return FoodstuffModel(
    name: json['name'] as String,
    quantity: QuantityModel.fromJson(json['quantity'] as Map<String, dynamic>),
    nutrients:
        NutrientsModel.fromJson(json['nutrients'] as Map<String, dynamic>),
    isAllergy: json['isAllergy'] as bool,
    isHeat: json['isHeat'] as bool,
  );
}

Map<String, dynamic> _$FoodstuffModelToJson(FoodstuffModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'nutrients': instance.nutrients,
      'isAllergy': instance.isAllergy,
      'isHeat': instance.isHeat,
    };
