import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/recipe/recipe_type.dart';

part 'open_data_recipe_model.freezed.dart';

@freezed
class OpenDataRecipeModel with _$OpenDataRecipeModel {
  const OpenDataRecipeModel._();
  factory OpenDataRecipeModel({
    required String name,                       // 名前
    @Default(RecipeType.other) RecipeType type, // タイプ
    String? thumbnail,                          // サムネイル
    required String pdf,                        // PDF
  }) = _OpenDataRecipeModel;

  String? get thumbnailUrl => (thumbnail != null)
      ? 'https://www.city.hakodate.hokkaido.jp/docs/2016012500108/files/thumb/$thumbnail'
      : null;
  String get pdfUrl => 'https://www.city.hakodate.hokkaido.jp/docs/2016012500108/files/$pdf';
  String get pdfPath => '/open_data_recipes/pdfs/$pdf';
}
