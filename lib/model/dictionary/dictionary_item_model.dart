import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/nutrients/nutrients_model.dart';

part 'dictionary_item_model.freezed.dart';
part 'dictionary_group.dart';

@freezed
class DictionaryItemModel with _$DictionaryItemModel {
  const factory DictionaryItemModel({
    required int id, // ID
    required DictionaryGroup group, // 食品分類（1 ~ 18群）
    required String name, // 食材名
    required NutrientsModel nutrients, // 栄養素
    String? note, // 備考
  }) = _DictionaryItemModel;
}
