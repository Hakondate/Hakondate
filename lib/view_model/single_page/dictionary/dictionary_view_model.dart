import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/model/nutrients/five_major_nutrient.dart';
import 'package:hakondate/repository/local/sqlite/dictionary_items/dictionary_items_local_repository.dart';
import 'package:hakondate/state/dictionary/dictionary_state.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';

part 'dictionary_view_model.g.dart';

@Riverpod(keepAlive: true)
class DictionaryViewModel extends _$DictionaryViewModel {
  late final DictionaryItemsLocalRepositoryAPI _dictionaryItemsLocalRepository;
  
  @override
  FutureOr<DictionaryState> build() {
    _dictionaryItemsLocalRepository = ref.watch(dictionaryItemsLocalRepositoryProvider);
    return  DictionaryState(
      scrollController: ScrollController(),
    );
  }

	Future<void> selectGroup(DictionaryGroup group) async {
		state = const AsyncLoading<DictionaryState>();
		state = AsyncData<DictionaryState>(
			DictionaryState(
        scrollController: ScrollController(),
				selectedGroup: group,
				selectedGroupItems: await _dictionaryItemsLocalRepository.listGroup(group.groupNumber),
			),
		);
	}

  Future<void> selectItem(int id) async {
    state.whenData((DictionaryState data) async {
      state = const AsyncLoading<DictionaryState>();
      state = AsyncData<DictionaryState>(
        data.copyWith(
          selectedItem: await _dictionaryItemsLocalRepository.getById(id),
        ),
      );
    });

    await ref.read(analyticsControllerProvider.notifier).logViewDictionary(id);
  }

  Future<List<double>> getGraphValues(double maxValue) async {
    return state.maybeWhen(
      data: (DictionaryState data) async {
        final DictionaryItemModel? item = data.selectedItem;

        if (item == null) return <double>[0, 0, 0, 0, 0, 0];

        final DictionaryItemModel energyRef = await _getMaxRef(FiveMajorNutrient.energy);
        final DictionaryItemModel proteinRef = await _getMaxRef(FiveMajorNutrient.protein);
        final DictionaryItemModel vitaminRef = await _getMaxRef(FiveMajorNutrient.vitamin);
        final DictionaryItemModel mineralRef = await _getMaxRef(FiveMajorNutrient.mineral);
        final DictionaryItemModel carbohydrateRef = await _getMaxRef(FiveMajorNutrient.carbohydrate);
        final DictionaryItemModel lipidRef = await _getMaxRef(FiveMajorNutrient.lipid);

        return <double>[
          item.nutrients.energy / energyRef.nutrients.energy * 100,
          item.nutrients.protein / proteinRef.nutrients.protein * 100,
          item.nutrients.vitamin / vitaminRef.nutrients.vitamin * 100,
          item.nutrients.mineral / mineralRef.nutrients.mineral * 100,
          item.nutrients.carbohydrate / carbohydrateRef.nutrients.carbohydrate * 100,
          item.nutrients.lipid / lipidRef.nutrients.lipid * 100,
        ].map((double value) => (value > maxValue) ? maxValue : value).toList();
      },
      orElse: () => <double>[0, 0, 0, 0, 0, 0],
    );
  }

  Future<DictionaryItemModel> _getMaxRef(FiveMajorNutrient nutrient) async {
    final List<DictionaryItemModel> schemas = await _dictionaryItemsLocalRepository.getRanking(
      nutrient: nutrient.name,
      limit: 200,
    );

    return schemas.last;
  }

  void scrollToTop() {
    state.whenData((DictionaryState data) {
      data.scrollController!.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.easeOutCubic);
    });
  }
}
