import 'package:hakondate/model/recipe/open_data_recipe_model.dart';
import 'package:hakondate/model/recipe/recipe_type.dart';

class OpenDataRecipes {
  static final List<OpenDataRecipeModel> all = [
    ...dupes,
    ...originals,
    ...steamConvectionOvens,
    ...others,
  ];

  static final List<OpenDataRecipeModel> dupes = [
    OpenDataRecipeModel(
      name: 'とろろ昆布のすまし汁',
      type: RecipeType.dupe,
      thumbnail: 'A1tororo.jpeg',
      pdf: 'A1tororokonbu.pdf',
    ),
    OpenDataRecipeModel(
      name: '沢煮椀',
      type: RecipeType.dupe,
      thumbnail: 'B2sawaniwan.jpeg',
      pdf: 'B2sawaniwan.pdf',
    ),
    OpenDataRecipeModel(
      name: 'かきたま汁',
      type: RecipeType.dupe,
      thumbnail: 'B2kakitamajiru.jpeg',
      pdf: 'B2kakitamajiru.pdf',
    ),
    OpenDataRecipeModel(
      name: '鮭のごまみそ鍋',
      type: RecipeType.dupe,
      thumbnail: 'B3sakenogomamisonabe.jpeg',
      pdf: 'B3sakegomamiso.pdf',
    ),
    OpenDataRecipeModel(
      name: 'ほうとう',
      type: RecipeType.dupe,
      thumbnail: 'B4houtou.jpeg',
      pdf: 'B4houtou.pdf',
    ),
    OpenDataRecipeModel(
      name: 'そうめんすまし汁',
      type: RecipeType.dupe,
      thumbnail: 'B5soumen.jpeg',
      pdf: 'B5soumen.pdf',
    ),
    OpenDataRecipeModel(
      name: 'けんちん汁',
      type: RecipeType.dupe,
      thumbnail: 'B6kenchin.jpeg',
      pdf: 'B6kenchin.pdf',
    ),
    OpenDataRecipeModel(
      name: 'かぼちゃ団子汁',
      type: RecipeType.dupe,
      thumbnail: 'C1kabochadango.jpeg',
      pdf: 'C1kabochadango.pdf',
    ),
    OpenDataRecipeModel(
      name: '卵とわかめのすまし汁',
      type: RecipeType.dupe,
      thumbnail: 'C2tamagowakame.jpeg',
      pdf: 'C2tamagowakamesumashijiru.pdf',
    ),
    OpenDataRecipeModel(
      name: 'すり身汁',
      type: RecipeType.dupe,
      thumbnail: 'C3surimijiru.jpeg',
      pdf: 'C3surimijiru.pdf',
    ),
    OpenDataRecipeModel(
      name: 'くじら汁',
      type: RecipeType.dupe,
      thumbnail: 'C4kujirajiru.jpeg',
      pdf: 'C4kujirajiru.pdf',
    ),
  ];

  static final List<OpenDataRecipeModel> originals = [
    OpenDataRecipeModel(
      name: 'いかの磯辺揚げ',
      type: RecipeType.original,
      thumbnail: 'A1ikaisobe.jpeg',
      pdf: 'A1ikanoisobeage.pdf',
    ),
    OpenDataRecipeModel(
      name: '千草焼き',
      type: RecipeType.original,
      thumbnail: 'A3chigusayaki.jpeg',
      pdf: 'A3chigusayaki.pdf',
    ),
    OpenDataRecipeModel(
      name: '鮭のごま風味揚げ',
      type: RecipeType.original,
      thumbnail: 'B1sakegoma.jpeg',
      pdf: 'B1sakegoma.pdf',
    ),
    OpenDataRecipeModel(
      name: 'ぶりとなすのたたき風',
      type: RecipeType.original,
      thumbnail: 'B3buritonautataki.jpeg',
      pdf: 'B3burinasutataki.pdf',
    ),
    OpenDataRecipeModel(
      name: 'ぶりの南蛮煮',
      type: RecipeType.original,
      thumbnail: 'B5burinanban.jpeg',
      pdf: 'B5burinonanbanni.pdf',
    ),
    OpenDataRecipeModel(
      name: '春採り昆布の佃煮、くじらの竜田揚げ',
      type: RecipeType.original,
      thumbnail: 'B6harutorikujira.jpeg',
      pdf: 'B6konbukujira.pdf',
    ),
    OpenDataRecipeModel(
      name: 'どさんこ汁',
      type: RecipeType.original,
      thumbnail: 'C1dosankojiru.jpeg',
      pdf: 'C1dosankojiru.pdf',
    ),
    OpenDataRecipeModel(
      name: 'ぶり甘酢あん',
      type: RecipeType.original,
      thumbnail: 'C3buriamazuan.jpeg',
      pdf: 'C3buriamazuan.pdf',
    ),
    OpenDataRecipeModel(
      name: '春愛しい',
      type: RecipeType.original,
      thumbnail: 'C4haruitoshii.jpeg',
      pdf: 'C4haruitosii.pdf',
    ),
    OpenDataRecipeModel(
      name: 'かに飯',
      type: RecipeType.original,
      thumbnail: 'C4kanimeshi.jpeg',
      pdf: 'C4kanimeshi.pdf',
    ),
  ];

  static final List<OpenDataRecipeModel> steamConvectionOvens = [
    OpenDataRecipeModel(
      name: 'ブリの豆板醤焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon01.jpeg',
      pdf: 'stecon1-2.pdf',
    ),
    OpenDataRecipeModel(
      name: 'お好み焼き風卵焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon02.jpeg',
      pdf: 'stecon1-2.pdf',
    ),
    OpenDataRecipeModel(
      name: 'かんたんミートローフ',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon03.jpeg',
      pdf: 'stecon3-4.pdf',
    ),
    OpenDataRecipeModel(
      name: 'タンドリーチキン',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon04.jpeg',
      pdf: 'stecon3-4.pdf',
    ),
    OpenDataRecipeModel(
      name: 'たら西京焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon05.jpeg',
      pdf: 'stecon5-6.pdf',
    ),
    OpenDataRecipeModel(
      name: 'おろしソース',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon06.jpeg',
      pdf: 'stecon5-6.pdf',
    ),
    OpenDataRecipeModel(
      name: 'ホタテと鮭のバターしょうゆ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon07.jpeg',
      pdf: 'stecon7-8.pdf',
    ),
    OpenDataRecipeModel(
      name: '鮭のちゃんちゃん焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon08.jpeg',
      pdf: 'stecon7-8.pdf',
    ),
    OpenDataRecipeModel(
      name: '鶏肉のハーブパン粉焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon09.jpeg',
      pdf: 'stecon9-10.pdf',
    ),
    OpenDataRecipeModel(
      name: 'ブリの薬味焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon10.jpeg',
      pdf: 'stecon9-10.pdf',
    ),
    OpenDataRecipeModel(
      name: '豆腐の肉みそ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon11.jpeg',
      pdf: 'stecon11-12.pdf',
    ),
    OpenDataRecipeModel(
      name: '豆のカレーチーズ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon12.jpeg',
      pdf: 'stecon11-12.pdf',
    ),
    OpenDataRecipeModel(
      name: 'ホタテのトマトソース焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon13.jpeg',
      pdf: 'stecon13-14.pdf',
    ),
    OpenDataRecipeModel(
      name: 'たらチーズ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon14.jpeg',
      pdf: 'stecon13-14.pdf',
    ),
    OpenDataRecipeModel(
      name: '豆腐入りハンバーグ(きのこソース)',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon15.jpeg',
      pdf: 'stecon15-16.pdf',
    ),
    OpenDataRecipeModel(
      name: '鱈カレーチーズ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon16.jpeg',
      pdf: 'stecon15-16.pdf',
    ),
    OpenDataRecipeModel(
      name: '鮭生姜焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon17.jpeg',
      pdf: 'stecon17-18.pdf',
    ),
    OpenDataRecipeModel(
      name: 'ブリの洋風ソースかけ',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon18.jpeg',
      pdf: 'stecon17-18.pdf',
    ),
    OpenDataRecipeModel(
      name: '鮭のごまみそ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon19.jpeg',
      pdf: 'stecon19-20.pdf',
    ),
    OpenDataRecipeModel(
      name: 'ブリ五香焼き',
      type: RecipeType.steamConvectionOven,
      pdf: 'stecon19-20.pdf',
    ),
    OpenDataRecipeModel(
      name: 'お月見団子',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon21.jpeg',
      pdf: 'stecon21-22.pdf',
    ),
    OpenDataRecipeModel(
      name: 'なすのミートグラタン',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon22.jpeg',
      pdf: 'stecon21-22.pdf',
    ),
  ];

  static final List<OpenDataRecipeModel> others = [
    OpenDataRecipeModel(
      name: '学校給食のだしの取り方',
      type: RecipeType.other,
      pdf: 'dashi.pdf',
    ),
    OpenDataRecipeModel(
      name: '児童が考案したメニュー',
      type: RecipeType.other,
      pdf: 'jidou.pdf',
    ),
  ];
}
