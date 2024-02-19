import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/recipe/recipe_type.dart';

part 'open_data_recipe_model.freezed.dart';

@freezed
class OpenDataRecipeModel with _$OpenDataRecipeModel {
  factory OpenDataRecipeModel({
    /// ID
    required int id,

    /// 名前
    required String name,

    /// PDF
    required String pdf,

    /// タイプ
    @Default(RecipeType.other) RecipeType type,

    /// サムネイル
    String? thumbnail,
  }) = _OpenDataRecipeModel;
  const OpenDataRecipeModel._();

  String? get thumbnailUrl => (thumbnail != null)
      ? 'https://www.city.hakodate.hokkaido.jp/docs/2016012500108/file_contents/2016012500108_hk_docs_2016012500108_files_thumb_$thumbnail'
      : null;
  String get pdfUrl =>
      'https://www.city.hakodate.hokkaido.jp/docs/2016012500108/file_contents/2016012500108_hk_docs_2016012500108_files_$pdf';
  String get pdfPath => '/open_data_recipes/pdfs/$pdf';
}
