import 'dart:typed_data';

import 'package:hakondate/model/recipe/open_data_recipe_model.dart';
import 'package:hakondate/repository/local/directory/open_data_recipes/open_data_recipes_local_repository.dart';
import 'package:hakondate/repository/remote/open_data_recipes/open_data_recipes_remote_repository.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_view_model.g.dart';

@Riverpod(keepAlive: true)
class RecipeViewModel extends _$RecipeViewModel {
  late final OpenDataRecipesLocalRepository _openDataLocalRepository;
  late final OpenDataRecipesRemoteRepository _openDataRemoteRepository;

  @override
  void build() {
    _openDataLocalRepository = ref.watch(openDataRecipesLocalRepositoryProvider);
    _openDataRemoteRepository = ref.watch(openDataRecipesRemoteRepositoryProvider);
  }

  Future<String> getPath({required OpenDataRecipeModel recipe}) async {
    final String path = recipe.pdfPath;

    if (await _openDataLocalRepository.isExist(path: path)) {
      return _openDataLocalRepository.getPath(path: path);
    }

    await ref.read(analyticsControllerProvider.notifier).logViewRecipe(recipe.id);
    final Uint8List bytes = await _openDataRemoteRepository.getPDF(recipe.pdfUrl);
    return _openDataLocalRepository.add(path: path, bytes: bytes);
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