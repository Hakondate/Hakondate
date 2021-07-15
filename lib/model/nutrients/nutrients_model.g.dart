// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrients_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NutrientsModel _$NutrientsModelFromJson(Map<String, dynamic> json) {
  return NutrientsModel(
    energy: (json['energy'] as num).toDouble(),
    protein: (json['protein'] as num).toDouble(),
    lipid: (json['lipid'] as num).toDouble(),
    carbohydrate: (json['carbohydrate'] as num).toDouble(),
    sodium: (json['sodium'] as num).toDouble(),
    calcium: (json['calcium'] as num).toDouble(),
    magnesium: (json['magnesium'] as num).toDouble(),
    iron: (json['iron'] as num).toDouble(),
    zinc: (json['zinc'] as num).toDouble(),
    retinol: (json['retinol'] as num).toDouble(),
    vitaminB1: (json['vitaminB1'] as num).toDouble(),
    vitaminB2: (json['vitaminB2'] as num).toDouble(),
    vitaminC: (json['vitaminC'] as num).toDouble(),
    dietaryFiber: (json['dietaryFiber'] as num).toDouble(),
    salt: (json['salt'] as num).toDouble(),
  );
}

Map<String, dynamic> _$NutrientsModelToJson(NutrientsModel instance) =>
    <String, dynamic>{
      'energy': instance.energy,
      'protein': instance.protein,
      'lipid': instance.lipid,
      'carbohydrate': instance.carbohydrate,
      'sodium': instance.sodium,
      'calcium': instance.calcium,
      'magnesium': instance.magnesium,
      'iron': instance.iron,
      'zinc': instance.zinc,
      'retinol': instance.retinol,
      'vitaminB1': instance.vitaminB1,
      'vitaminB2': instance.vitaminB2,
      'vitaminC': instance.vitaminC,
      'dietaryFiber': instance.dietaryFiber,
      'salt': instance.salt,
    };
