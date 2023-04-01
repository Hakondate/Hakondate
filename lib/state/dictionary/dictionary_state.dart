import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';

part 'dictionary_state.freezed.dart';

@freezed
class DictionaryState with _$DictionaryState {
  factory DictionaryState({
    DictionaryGroup? selectedGroup,
    List<DictionaryItemModel>? selectedGroupItems,
    DictionaryItemModel? selectedItem,
  }) => DictionaryState.data(
    selectedGroup: selectedGroup,
    selectedGroupItems: selectedGroupItems,
    selectedItem: selectedItem,
  );

  const factory DictionaryState.data({
    DictionaryGroup? selectedGroup,
    List<DictionaryItemModel>? selectedGroupItems,
    DictionaryItemModel? selectedItem,
  }) = DictionaryStateData;
  const factory DictionaryState.load() = DictionaryStateLoad;
}
