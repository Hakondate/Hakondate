// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  return _$_UserModel(
    name: json['name'] as String?,
    school: json['school'] == null
        ? null
        : UsersSchoolModel.fromJson(json['school'] as Map<String, dynamic>),
    slns: json['slns'] == null
        ? null
        : NutrientsModel.fromJson(json['slns'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'school': instance.school,
      'slns': instance.slns,
    };
