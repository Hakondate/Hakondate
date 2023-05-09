import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/repository/local/sqlite/dictionary_items_local_repository.dart';
import 'package:hakondate/state/dictionary/dictionary_state.dart';
import 'package:hakondate/util/analytics_controller.dart';

final StateNotifierProvider<DictionaryViewModel, DictionaryState> dictionaryProvider =
    StateNotifierProvider<DictionaryViewModel, DictionaryState>((StateNotifierProviderRef<DictionaryViewModel, DictionaryState> ref) {
  final DictionaryItemsLocalRepository dictionaryItemsLocalRepository = ref.watch(dictionaryItemsLocalRepositoryProvider);
  return DictionaryViewModel(dictionaryItemsLocalRepository, ref);
});

class DictionaryViewModel extends StateNotifier<DictionaryState> {
  DictionaryViewModel(this._dictionaryItemsLocalRepository, this._ref) : super(DictionaryState());

  final DictionaryItemsLocalRepository _dictionaryItemsLocalRepository;
  final Ref _ref;

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
    
    await _ref.read(analyticsControllerProvider.notifier).logViewDictionary(id);
  }

  Future<List<double>> getGraphValues(double maxValue) async {
    final DictionaryState data = state;

    if (data is! DictionaryStateData) return <double>[0, 0, 0, 0, 0, 0];

    final DictionaryItemModel? item = data.selectedItem;

    if (item == null) return <double>[0, 0, 0, 0, 0, 0];

    final DictionaryItemModel energyRef = await _getMaxRef('energy');
    final DictionaryItemModel proteinRef = await _getMaxRef('protein');
    final DictionaryItemModel vitaminRef = await _getMaxRef('vitamin');
    final DictionaryItemModel mineralRef = await _getMaxRef('mineral');
    final DictionaryItemModel carbohydrateRef = await _getMaxRef('carbohydrate');
    final DictionaryItemModel lipidRef = await _getMaxRef('lipid');

    return <double>[
      item.nutrients.energy / energyRef.nutrients.energy * 100,
      item.nutrients.protein / proteinRef.nutrients.protein * 100,
      item.nutrients.vitamin / vitaminRef.nutrients.vitamin * 100,
      item.nutrients.mineral / mineralRef.nutrients.mineral * 100,
      item.nutrients.carbohydrate / carbohydrateRef.nutrients.carbohydrate * 100,
      item.nutrients.lipid / lipidRef.nutrients.lipid * 100,
    ].map((double value) => (value > maxValue) ? maxValue : value).toList();
  }

  Future<DictionaryItemModel> _getMaxRef(String nutrient) async {
    final List<DictionaryItemModel> schemas = await _dictionaryItemsLocalRepository.getRanking(
      nutrient: nutrient,
      limit: 200,
    );

    return schemas.last;
  }
}
