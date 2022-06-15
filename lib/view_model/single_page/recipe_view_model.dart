import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/repository/local/directory/open_data_recipe_repository.dart';

final recipeProvider = StateNotifierProvider<RecipeViewModel, void>((ref) {
  final OpenDataRecipeRepository openDataRepository = ref.read(openDataRecipeRepositoryProvider);
  return RecipeViewModel(openDataRepository);
});

class RecipeViewModel extends StateNotifier<void> {
  RecipeViewModel(this._openDataRepository) : super(null);

  final OpenDataRecipeRepository _openDataRepository;
}
