import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/model/nutrients/five_major_nutrient.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/repository/local/sqlite/dictionary_items/dictionary_items_local_repository.dart';
import 'package:hakondate/repository/local/sqlite/menus/menus_local_repository.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/state/scroll/scroll_state.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';
import 'package:hakondate/util/environment.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

part 'scroll_view_model.g.dart';

@Riverpod(keepAlive: true)
class ScrollViewModel extends _$ScrollViewModel {
  @override
  ScrollState build() {
    return ScrollState(
      dailyScrollController: ScrollController(),
      recipesScrollController: ScrollController(),
      dictionaryScrollController: ScrollController(),
      letterScrollController: ScrollController(),
    );
  }

  void scrollToTop({required ScrollController scrollController}) {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
    );
  }

  // void _storeOffset(double offset) {
  //   state.whenData((DailyState data) {
  //     state = AsyncValue<DailyState>.data(
  //       data.copyWith(
  //         scrollController: ScrollController(initialScrollOffset: offset),
  //       ),
  //     );
  //   });
  // }

  //   double getPreOffset() {
  //   return state.maybeWhen(
  //     orElse: () => 0,
  //     data: (DailyState data) => data.scrollController.position.pixels,
  //   );
  // }
}
