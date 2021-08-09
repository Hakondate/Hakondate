// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersSchoolModel _$UsersSchoolModelFromJson(Map<String, dynamic> json) {
  return UsersSchoolModel(
    id: json['id'] as int,
    parentId: json['parentId'] as int,
    name: json['name'] as String,
    lunchBlock: json['lunchBlock'] as int?,
    classification: json['classification'] as int,
    schoolYear: json['schoolYear'] as int?,
  );
}

Map<String, dynamic> _$UsersSchoolModelToJson(UsersSchoolModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'lunchBlock': instance.lunchBlock,
      'classification': instance.classification,
      'schoolYear': instance.schoolYear,
    };
