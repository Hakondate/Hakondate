// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuantityModel _$QuantityModelFromJson(Map<String, dynamic> json) {
  return QuantityModel(
    piece: json['piece'] as int?,
    gram: (json['gram'] as num).toDouble(),
  );
}

Map<String, dynamic> _$QuantityModelToJson(QuantityModel instance) =>
    <String, dynamic>{
      'piece': instance.piece,
      'gram': instance.gram,
    };
