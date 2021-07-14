import 'package:json_annotation/json_annotation.dart';

part 'quantity_model.g.dart';

@JsonSerializable()
class QuantityModel {
  QuantityModel({
    this.piece,
    this.gram = 0.0
  });

  factory QuantityModel.fromJson(Map<String, dynamic> json) =>
      _$QuantityModelFromJson(json);
  Map<String, dynamic> toJson() => _$QuantityModelToJson(this);

  final int? piece;   // 個数
  final double gram;  // 量(g)
}