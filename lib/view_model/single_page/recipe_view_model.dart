import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/recipe/open_data_recipe_model.dart';
import 'package:hakondate/repository/local/directory/open_data_recipe_local_repository.dart';
import 'package:hakondate/repository/remote/open_data_recipe_remote_repository.dart';

final recipeProvider = StateNotifierProvider<RecipeViewModel, void>((ref) {
  final OpenDataRecipeLocalRepository openDataLocalRepository = ref.read(openDataRecipeLocalRepositoryProvider);
  final OpenDataRecipeRemoteRepository openDataRemoteRepository = ref.read(openDataRecipeRemoteRepositoryProvider);
  return RecipeViewModel(openDataLocalRepository, openDataRemoteRepository);
});

class RecipeViewModel extends StateNotifier<void> {
  RecipeViewModel(this._openDataLocalRepository, this._openDataRemoteRepository) : super(null);

  final OpenDataRecipeLocalRepository _openDataLocalRepository;
  final OpenDataRecipeRemoteRepository _openDataRemoteRepository;

  Future<String> getPath({required OpenDataRecipeModel recipe}) async {
    final String path = recipe.pdfPath;

    if (await _openDataLocalRepository.isExist(path: path)) {
      return await _openDataLocalRepository.getPath(path: path);
    }

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
