import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/nutrients/nutrients_model.dart';

part 'dictionary_item_model.freezed.dart';
part 'dictionary_group.dart';

@freezed
class DictionaryItemModel with _$DictionaryItemModel {
  const factory DictionaryItemModel({
    /// ID
    required int id,

    /// 食品分類（1 ~ 18群）
    required DictionaryGroup group,

    /// 食材名
    required String name,

    /// 栄養素
    required NutrientsModel nutrients,

    /// 備考
    String? note,
  }) = _DictionaryItemModel;
}
