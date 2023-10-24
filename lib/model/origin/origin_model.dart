import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakondate/model/origin/origin_category_model.dart';

export 'package:hakondate/model/origin/origin_category_model.dart';

part 'origin_model.freezed.dart';

@freezed
class OriginModel with _$OriginModel {
  const factory OriginModel({
    required DateTime date,
    required List<OriginCategoryModel> categories,
  }) = _OriginModel;
}
