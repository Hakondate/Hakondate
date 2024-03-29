import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/repository/local/sqlite/dictionary_items/dictionary_items_local_repository.dart';
import 'package:hakondate/state/dictionary/dictionary_search_state.dart';

part 'dictionary_search_view_model.g.dart';

@riverpod
class DictionarySearchViewModel extends _$DictionarySearchViewModel {
  late final DictionaryItemsLocalRepositoryAPI _dictionaryItemsLocalRepository;
  @override
  Future<DictionarySearchState> build() async {
    _dictionaryItemsLocalRepository = ref.watch(dictionaryItemsLocalRepositoryProvider);
    ref.onDispose(() => state.whenData((DictionarySearchState data) => data.searchBarTextController.dispose()));
    return DictionarySearchState(
      searchBarTextController: TextEditingController(),
      searchedItems: await _dictionaryItemsLocalRepository.getAll(),
    );
  }

  Future<void> getSearchedList(String query) async {
    state.whenData((DictionarySearchState data) async {
      state = AsyncData<DictionarySearchState>(
        data.copyWith(
          searchedItems: await _dictionaryItemsLocalRepository.search(query),
        ),
      );
    });
  }

  Future<void> clearQuery() async {
    state.whenData((DictionarySearchState data) async {
      state = const AsyncLoading<DictionarySearchState>();
      state = AsyncData<DictionarySearchState>(
        data.copyWith(
          searchedItems: await _dictionaryItemsLocalRepository.getAll(),
        ),
      );
    });
  }
}
