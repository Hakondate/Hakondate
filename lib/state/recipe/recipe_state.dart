import 'package:flutter/widgets.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_state.freezed.dart';

@freezed
class RecipeState with _$RecipeState {
  const factory RecipeState({
    required ScrollController scrollController,
  }) = _RecipeState;
}