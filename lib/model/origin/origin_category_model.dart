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

  factory OriginCategoryModel.fromFirestore({
    required String name,
    required Map<String, List<String>> items,
  }) => OriginCategoryModel(
    name: name,
    items: items.entries.map(
      (MapEntry<String, List<String>> item) => OriginItemModel(
        name: item.key,
        prefectures: item.value,
      ),
    ).toList(),
  );
}
