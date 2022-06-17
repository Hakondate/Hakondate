import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/open_data_recipes.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/recipe/open_data_recipe_model.dart';
import 'package:hakondate/model/recipe/recipe_type.dart';
import 'package:hakondate/router/routes.dart';

class OpenDataRecipeGrid extends StatelessWidget {
  const OpenDataRecipeGrid({
    super.key,
    required this.type,
  });

  final RecipeType type;

  @override
  Widget build(BuildContext context) {
    final List<OpenDataRecipeModel> recipes = OpenDataRecipes.recipes(type);

    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: MarginSize.minimum,
      crossAxisSpacing: MarginSize.minimum,
      children: recipes.map((recipe) => _gridTile(recipe)).toList(),
    );
  }

  Widget _gridTile(OpenDataRecipeModel recipe) {
    return GestureDetector(
      onTap: () => routemaster.push('/home/recipes_pdf/${recipe.id}'),
      child: Container(
        margin: const EdgeInsets.all(MarginSize.shadow),
        width: double.infinity,
        height: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: AppColor.ui.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: AppColor.ui.shadow,
              blurRadius: 1.0,
              offset: const Offset(0.0, MarginSize.shadow),
            ),
          ],
        ),
        child: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: PaddingSize.minimum),
              color: AppColor.brand.secondary,
              child: Text(
                recipe.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.text.white,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
              ),
            ),
            Expanded(
              child: (recipe.thumbnailUrl != null) ? Image.network(
                recipe.thumbnailUrl!,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder: (_, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      color: AppColor.brand.secondary,
                    ),
                  );
                },
                errorBuilder: (_, __, ___) => _noImage(),
              ) : _noImage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _noImage() {
    return Container(
      width: double.infinity,
      color: AppColor.ui.unsupported,
      child: Icon(
        Icons.image_not_supported_outlined,
        size: IconSize.noImage,
        color: AppColor.ui.white,
      ),
    );
  }
}
