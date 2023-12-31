import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_model.freezed.dart';
part 'school_classification.dart';

@freezed
class SchoolModel with _$SchoolModel {
  const factory SchoolModel({
    required int id, // ID
    required int parentId, // 親学校(給食センター)のID
    required String name, // 学校名
    required SchoolClassification classification, // 学校区分
    int? lunchBlock, // 給食区分: 1 ~ 10
  }) = _SchoolModel;
}
