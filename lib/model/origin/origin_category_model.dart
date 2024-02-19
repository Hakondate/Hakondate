import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/origin/origin_item_model.dart';

export 'package:hakondate/model/origin/origin_item_model.dart';

part 'origin_category_model.freezed.dart';

@freezed
class OriginCategoryModel with _$OriginCategoryModel {
  const factory OriginCategoryModel({
    required String name,
    required List<OriginItemModel> items,
  }) = _OriginCategoryModel;
  const OriginCategoryModel._();

  factory OriginCategoryModel.fromFirestore(MapEntry<String, dynamic> category) {
    final Map<String, dynamic> items = category.value as Map<String, dynamic>;

    return OriginCategoryModel(
      name: category.key,
      items: items.entries.map(OriginItemModel.fromFirestore).toList(),
    );
  }

  Map<String, Object> toFirestore() => <String, Object>{
        name: items.map((OriginItemModel item) => item.toFirestore()).toList(),
      };
}
