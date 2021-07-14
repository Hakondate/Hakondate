// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishModel _$DishModelFromJson(Map<String, dynamic> json) {
  return DishModel(
    name: json['name'] as String,
    foodstuffs: (json['foodstuffs'] as List<dynamic>)
        .map((e) => FoodstuffModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    category: json['category'] as String?,
  );
}

Map<String, dynamic> _$DishModelToJson(DishModel instance) => <String, dynamic>{
      'name': instance.name,
      'foodstuffs': instance.foodstuffs,
      'category': instance.category,
    };
