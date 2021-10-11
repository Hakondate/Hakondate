import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/state/navigator/recipe_navigator_state.dart';

final recipeRouterProvider = StateNotifierProvider<RecipeNavigationStateNotifier, RecipeNavigatorState>(
    (ref) => RecipeNavigationStateNotifier());

class RecipeNavigationStateNotifier extends StateNotifier<RecipeNavigatorState> {
  RecipeNavigationStateNotifier() : super(RecipeNavigatorState());
}