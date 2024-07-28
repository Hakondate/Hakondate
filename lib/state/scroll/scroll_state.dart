import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'scroll_state.freezed.dart';

@freezed
class ScrollState with _$ScrollState {
  const factory ScrollState({
    required ScrollController dailyScrollController,
    required ScrollController recipesScrollController,
    required ScrollController dictionaryScrollController,
    required ScrollController letterScrollController,
  }) = _ScrollState;
}
