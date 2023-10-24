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
}
