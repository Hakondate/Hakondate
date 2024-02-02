import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_model.freezed.dart';
part 'school_classification.dart';

@freezed
class SchoolModel with _$SchoolModel {
  const factory SchoolModel({
    /// ID
    required int id,

    /// 親学校(給食センター)のID
    required int parentId,

    /// 学校名
    required String name,

    /// 学校区分
    required SchoolClassification classification,

    /// 給食区分: 1 ~ 10
    int? lunchBlock,
  }) = _SchoolModel;
}
