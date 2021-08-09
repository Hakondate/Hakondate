// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) {
  return MenuModel(
    id: json['id'] as int,
    day: DateTime.parse(json['day'] as String),
    schoolId: json['schoolId'] as int,
    dishes: (json['dishes'] as List<dynamic>)
        .map((e) => DishModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MenuModelToJson(MenuModel instance) => <String, dynamic>{
      'id': instance.id,
      'day': instance.day.toIso8601String(),
      'schoolId': instance.schoolId,
      'dishes': instance.dishes,
    };
