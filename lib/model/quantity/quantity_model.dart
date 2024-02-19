import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/piece/piece_model.dart';

part 'quantity_model.freezed.dart';

@freezed
class QuantityModel with _$QuantityModel {
  const factory QuantityModel({
    /// 個数
    PieceModel? piece,

    /// 量(g)
    @Default(0.0) double gram,
  }) = _QuantityModel;

  factory QuantityModel.fromFirestore(Map<String, dynamic> data) {
    return QuantityModel(
      piece: data['pieceNumber'] == null
          ? null
          : PieceModel(
              number: double.parse(data['pieceNumber'].toString()),
              unit: data['pieceUnit'] as String,
            ),
      gram: double.parse(data['gram'].toString()),
    );
  }
}
