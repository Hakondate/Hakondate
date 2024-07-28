import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scroll_function.g.dart';

@riverpod
ScrollFunction scrollFunction(ScrollFunctionRef ref) => ScrollFunction(ref);

class ScrollFunction {
  ScrollFunction(this._ref);
  final Ref _ref;

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
