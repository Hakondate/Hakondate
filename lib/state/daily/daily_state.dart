import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/model/nutrients/nutrient_five_major.dart';

part 'daily_state.freezed.dart';

@freezed
class DailyState with _$DailyState {
  const factory DailyState({
    required DateTime selectedDay,
    required DateTime focusedDay,
    required DateTime calendarTabFirstDay,
    required DateTime calendarTabLastDay,
    @Default(<FiveMajorNutrient, List<DictionaryItemModel>> {}) Map<FiveMajorNutrient, List<DictionaryItemModel>> recommendIncredientsMap, 
    @Default(MenuModel.noData()) MenuModel menu,
    DishModel? selectedDish,
  }) = _DailyState;
}
