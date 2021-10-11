import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_navigator_state.freezed.dart';

@freezed
class RecipeNavigatorState with _$RecipeNavigatorState {
  const factory RecipeNavigatorState({
    Map<String, List<String>>? recipeName,
    Map<String, List<String>>? recipeImage,
    Map<String, List<String>>? recipeURL,
    @Default(<String>['dashi', 'original', 'oven', 'children']) List<String> mapKey,
    @Default(<String>['だしを活用した和食メニュー','各調理場自慢のオリジナルレシピ', 'スチームコンベクションオーブンを使ったメニュー', '児童が考案した給食メニュー']) List<String> recipeTitle,
  }) = _RecipeNavigatorState;
}