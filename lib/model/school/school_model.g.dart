// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolModel _$SchoolModelFromJson(Map<String, dynamic> json) {
  return SchoolModel(
    name: json['name'] as String,
    lunchBlock: json['lunchBlock'] as int,
    classification: json['classification'] as int?,
  );
}

Map<String, dynamic> _$SchoolModelToJson(SchoolModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lunchBlock': instance.lunchBlock,
      'classification': instance.classification,
    };
