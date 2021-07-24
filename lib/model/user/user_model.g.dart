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
        : UsersSchoolModel.fromJson(json['school'] as Map<String, dynamic>),
  )..slns = json['slns'] == null
      ? null
      : NutrientsModel.fromJson(json['slns'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'school': instance.school,
      'slns': instance.slns,
    };
