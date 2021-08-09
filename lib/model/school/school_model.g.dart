// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolModel _$SchoolModelFromJson(Map<String, dynamic> json) {
  return SchoolModel(
    id: json['id'] as int,
    parentId: json['parentId'] as int,
    name: json['name'] as String,
    lunchBlock: json['lunchBlock'] as int?,
    classification: json['classification'] as int?,
  );
}

Map<String, dynamic> _$SchoolModelToJson(SchoolModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'lunchBlock': instance.lunchBlock,
      'classification': instance.classification,
    };
