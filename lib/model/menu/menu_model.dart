import 'package:json_annotation/json_annotation.dart';

import 'package:hakondate_v2/model/dish/dish_model.dart';
import 'package:hakondate_v2/model/school/school_model.dart';

part 'menu_model.g.dart';

@JsonSerializable()
class MenuModel {
  MenuModel({
    required this.day,
    required this.school,
    required this.dishes
  });

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);
  Map<String, dynamic> toJson() => _$MenuModelToJson(this);

  final DateTime day;           // 日付
  final SchoolModel school;     // 学校
  final List<DishModel> dishes; // 料理
}