import 'package:flutter/material.dart';

import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/open_data_recipes.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/recipe/open_data_recipe_model.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view_model/single_page/recipe_view_model.dart';

class RecipePDF extends ConsumerWidget {
  const RecipePDF({
    super.key,
    this.pdf,
  });

  final String? pdf;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OpenDataRecipeModel recipe = OpenDataRecipes.all.firstWhere((recipe) => recipe.pdf == pdf);

    return Scaffold(
      appBar: FadeUpAppBar(
        title: Text(recipe.name),
      ),
      body: FutureBuilder(
        future: ref.read(recipeProvider.notifier).getPath(recipe: recipe),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColor.brand.secondary,
              ),
            );
          }

          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
            return PDFView(
              filePath: snapshot.data,
              enableSwipe: true,
            );
          }

          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/status/error.png',
                  width: MediaQuery.of(context).size.width / 2,
                ),
                const SizedBox(height: MarginSize.normal),
                Text(
                  '読み込みに失敗しました',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: AppColor.text.primary,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
