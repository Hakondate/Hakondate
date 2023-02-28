import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/recipe/open_data_recipe_model.dart';
import 'package:hakondate/repository/local/directory/open_data_recipe_local_repository.dart';
import 'package:hakondate/repository/remote/open_data_recipe_remote_repository.dart';
import 'package:hakondate/util/analytics_controller.dart';

final recipeProvider = StateNotifierProvider<RecipeViewModel, void>((ref) {
  final OpenDataRecipeLocalRepository openDataLocalRepository = ref.watch(openDataRecipeLocalRepositoryProvider);
  final OpenDataRecipeRemoteRepository openDataRemoteRepository = ref.watch(openDataRecipeRemoteRepositoryProvider);
  return RecipeViewModel(openDataLocalRepository, openDataRemoteRepository, ref);
});

class RecipeViewModel extends StateNotifier<void> {
  RecipeViewModel(
      this._openDataLocalRepository,
      this._openDataRemoteRepository,
      this._ref,
      ) : super(null);

  final OpenDataRecipeLocalRepository _openDataLocalRepository;
  final OpenDataRecipeRemoteRepository _openDataRemoteRepository;
  final Ref _ref;

  Future<String> getPath({required OpenDataRecipeModel recipe}) async {
    final String path = recipe.pdfPath;

    if (await _openDataLocalRepository.isExist(path: path)) {
      return await _openDataLocalRepository.getPath(path: path);
    }

    await _ref.read(analyticsControllerProvider.notifier).logViewRecipe(recipe.id);
    final Uint8List bytes = await _openDataRemoteRepository.getPDF(recipe.pdfUrl);
    return await _openDataLocalRepository.add(path: path, bytes: bytes);
  }

  Future<void> reDownload({required OpenDataRecipeModel recipe}) async {
    final String path = recipe.pdfPath;

    if (await _openDataLocalRepository.isExist(path: path)) {
      await _openDataLocalRepository.delete(path: path);
    }

    final Uint8List bytes = await _openDataRemoteRepository.getPDF(recipe.pdfUrl);
    await _openDataLocalRepository.add(path: path, bytes: bytes);
  }
}
