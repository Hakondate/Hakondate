import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/dictionary/dictionary_item_model.dart';

part 'dictionary_state.freezed.dart';

@freezed
class DictionaryState with _$DictionaryState {
  const factory DictionaryState({
    required ScrollController? scrollController, 
    DictionaryGroup? selectedGroup,
    List<DictionaryItemModel>? selectedGroupItems,
    DictionaryItemModel? selectedItem,
  }) = _DictionaryState;
}
