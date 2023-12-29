import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';

part 'dictionary_search_state.freezed.dart';

@freezed
class DictionarySearchState with _$DictionarySearchState {

	const factory DictionarySearchState({
		required TextEditingController searchBarTextController,
    @Default(<DictionaryItemModel>[]) List<DictionaryItemModel> searchedItems,
	}) = _DictionarySearchState;
}
