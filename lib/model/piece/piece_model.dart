import 'package:freezed_annotation/freezed_annotation.dart';

part 'piece_model.freezed.dart';

@freezed
abstract class PieceModel with _$PieceModel {
  const factory PieceModel({
    required double number,
    @Default('個') String unit,
  }) = _PieceModel;
}
