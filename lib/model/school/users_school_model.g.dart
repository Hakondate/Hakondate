// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsersSchoolModel _$_$_UsersSchoolModelFromJson(Map<String, dynamic> json) {
  return _$_UsersSchoolModel(
    id: json['id'] as int,
    parentId: json['parentId'] as int,
    name: json['name'] as String,
    lunchBlock: json['lunchBlock'] as int?,
    classification: json['classification'] as int? ?? 0,
    schoolYear: json['schoolYear'] as int?,
  );
}

Map<String, dynamic> _$_$_UsersSchoolModelToJson(
        _$_UsersSchoolModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'lunchBlock': instance.lunchBlock,
      'classification': instance.classification,
      'schoolYear': instance.schoolYear,
    };
