import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/repository/local/sqlite/dictionary_items_local_repository.dart';
import 'package:hakondate/state/dictionary/dictionary_state.dart';

class DictionaryViewModel extends StateNotifier<DictionaryState> {
  DictionaryViewModel(this._dictionaryItemsLocalRepository) : super(DictionaryState());

  final DictionaryItemsLocalRepository _dictionaryItemsLocalRepository;

  Future<void> selectGroup(DictionaryGroup group) async {}
}
