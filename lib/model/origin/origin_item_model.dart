import 'package:freezed_annotation/freezed_annotation.dart';

part 'origin_item_model.freezed.dart';

@freezed
class OriginItemModel with _$OriginItemModel {
  const factory OriginItemModel({
    required String name,
    required List<String> prefectures,
  }) = _OriginItemModel;
  const OriginItemModel._();

  factory OriginItemModel.fromFirestore(MapEntry<String, dynamic> item) {
    final List<dynamic> dynamicPrefectures = item.value as List<dynamic>;
    final List<String> prefectures = dynamicPrefectures.map((dynamic prefecture) => prefecture as String).toList();

    return OriginItemModel(
      name: item.key,
      prefectures: prefectures,
    );
  }
}
