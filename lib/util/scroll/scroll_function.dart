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

  // void storeOffset(State state) {
  //   state.copyWith(
  //     scrollController: ScrollController(initialScrollOffset: state.scrollController.position.pixels),
  //   );
  // }

  //   double getPreOffset() {
  //   return state.maybeWhen(
  //     orElse: () => 0,
  //     data: (DailyState data) => data.scrollController.position.pixels,
  //   );
  // }
}
