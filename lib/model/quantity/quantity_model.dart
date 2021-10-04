import 'package:freezed_annotation/freezed_annotation.dart';

part 'quantity_model.freezed.dart';

@freezed
class QuantityModel with _$QuantityModel {
  const factory QuantityModel({
    int? piece,               // 個数
    @Default(0.0) double gram // 量(g)
  }) = _QuantityModel;
}