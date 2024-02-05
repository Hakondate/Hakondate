import 'dart:typed_data';
import 'package:flutter/widgets.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/state/recipe/recipe_state.dart';
import 'package:hakondate/model/recipe/open_data_recipe_model.dart';
import 'package:hakondate/repository/local/directory/open_data_recipes/open_data_recipes_local_repository.dart';
import 'package:hakondate/repository/remote/open_data_recipes/open_data_recipes_remote_repository.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';

part 'recipe_view_model.g.dart';

@Riverpod(keepAlive: true)
class RecipeViewModel extends _$RecipeViewModel {
  late final OpenDataRecipesLocalRepositoryAPI _openDataLocalRepository;
  late final OpenDataRecipesRemoteRepositoryAPI _openDataRemoteRepository;

  @override
  RecipeState build() {
    _openDataLocalRepository = ref.watch(openDataRecipesLocalRepositoryProvider);
    _openDataRemoteRepository = ref.watch(openDataRecipesRemoteRepositoryProvider);
    return RecipeState(
      scrollController: ScrollController(),
    );  
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

  void scrollToTop() {
      state.scrollController.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.easeOutCubic);
  }
}
