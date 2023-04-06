import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/repository/local/sqlite/dictionary_items_local_repository.dart';
import 'package:hakondate/state/dictionary/dictionary_state.dart';

final StateNotifierProvider<DictionaryViewModel, DictionaryState> dictionaryProvider =
    StateNotifierProvider<DictionaryViewModel, DictionaryState>((StateNotifierProviderRef<DictionaryViewModel, DictionaryState> ref) {
  final DictionaryItemsLocalRepository dictionaryItemsLocalRepository = ref.watch(dictionaryItemsLocalRepositoryProvider);
  return DictionaryViewModel(dictionaryItemsLocalRepository);
});

class DictionaryViewModel extends StateNotifier<DictionaryState> {
  DictionaryViewModel(this._dictionaryItemsLocalRepository) : super(DictionaryState());

  final DictionaryItemsLocalRepository _dictionaryItemsLocalRepository;

  Future<void> selectGroup(DictionaryGroup group) async {
    state = const DictionaryStateLoad();
    state = DictionaryStateData(
      selectedGroup: group,
      selectedGroupItems: await _dictionaryItemsLocalRepository.getGroup(group.groupNumber),
    );
  }

  Future<void> selectItem(int id) async {
    final DictionaryState data = state;

    if (data is! DictionaryStateData) return;

    state = const DictionaryStateLoad();
    state = data.copyWith(
      selectedItem: await _dictionaryItemsLocalRepository.getById(id),
    );
  }
}
