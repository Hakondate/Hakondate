import 'package:freezed_annotation/freezed_annotation.dart';

part 'origin_item_model.freezed.dart';

@freezed
class OriginItemModel with _$OriginItemModel {
  const factory OriginItemModel({
    required String name,
    required List<String> prefectures,
  }) = _OriginItemModel;
}
