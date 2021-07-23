import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hakondate_v2/model/school/users_school_model.dart';
import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  UserModel({
    this.name,
    this.school
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  final String? name;               // ニックネーム
  final UsersSchoolModel? school;   // 学校
  late final NutrientsModel? slns;  // 学校給食摂取基準

  // コンストラクタを呼び出した直後に必ず呼ぶ(コンストラクタ内で非同期関数を呼べないため)
  Future<void> getSLNS() async {
    if (school == null) {
      this.slns = NutrientsModel();
      return;
    }

    final String _pathSLNS = 'assets/slns/${school!.schoolGrade()}.json';
    final String _jsonSLNS = await rootBundle.loadString(_pathSLNS);
    final _decodeSLNS = json.decode(_jsonSLNS);

    this.slns = NutrientsModel.fromJson(_decodeSLNS);
  }
}