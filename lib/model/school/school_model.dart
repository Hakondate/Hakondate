import 'package:json_annotation/json_annotation.dart';

part 'school_model.g.dart';

@JsonSerializable()
class SchoolModel {
  SchoolModel({
    required this.id,
    required this.parentId,
    required this.name,
    this.lunchBlock,
    this.classification
  });

  factory SchoolModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolModelFromJson(json);
  Map<String, dynamic> toJson() => _$SchoolModelToJson(this);

  final int id;               // ID
  final int parentId;         // 親学校のID
  final String name;          // 学校名
  final int? lunchBlock;      // 給食区分: 1 ~ 6
  final int? classification;  // 学校区分: {0: 小学校, 1: 中学校}
}