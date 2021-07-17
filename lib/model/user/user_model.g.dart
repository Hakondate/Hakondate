// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    name: json['name'] as String?,
    school: json['school'] == null
        ? null
        : SchoolModel.fromJson(json['school'] as Map<String, dynamic>),
    schoolYear: json['schoolYear'] as int?,
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'school': instance.school,
      'schoolYear': instance.schoolYear,
    };
