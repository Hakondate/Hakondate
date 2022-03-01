import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakondate_v2/unit/enum.dart';

part 'school_model.freezed.dart';

@freezed
class SchoolModel with _$SchoolModel {
  const factory SchoolModel({
    required int id,                              // ID
    required int parentId,                        // 親学校(給食センター)のID
    required String name,                         // 学校名
    int? lunchBlock,                              // 給食区分: 1 ~ 10
    required SchoolClassification classification, // 学校区分
  }) = _SchoolModel;
}
