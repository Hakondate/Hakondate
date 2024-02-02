import 'package:freezed_annotation/freezed_annotation.dart';

part 'quantity_model.freezed.dart';

@freezed
class QuantityModel with _$QuantityModel {
  const factory QuantityModel({
    /// 個数
    int? piece,

    /// 量(g)
    @Default(0.0) double gram,
  }) = _QuantityModel;
}
