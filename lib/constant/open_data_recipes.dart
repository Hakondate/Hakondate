import 'package:hakondate/model/recipe/open_data_recipe_model.dart';
import 'package:hakondate/model/recipe/recipe_type.dart';

class OpenDataRecipes {
  static final List<OpenDataRecipeModel> all = <OpenDataRecipeModel>[
    ...dupes,
    ...originals,
    ...steamConvectionOvens,
    ...others,
  ];

  static List<OpenDataRecipeModel> recipes(RecipeType type) {
    switch (type) {
      case RecipeType.dupe:
        return dupes;
      case RecipeType.original:
        return originals;
      case RecipeType.steamConvectionOven:
        return steamConvectionOvens;
      case RecipeType.other:
        return others;
    }
  }

  static final List<OpenDataRecipeModel> dupes = <OpenDataRecipeModel>[
    OpenDataRecipeModel(
      id: 0,
      name: 'とろろ昆布のすまし汁',
      type: RecipeType.dupe,
      thumbnail: 'A1tororo.jpeg',
      pdf: 'A1tororokonbu.pdf',
    ),
    OpenDataRecipeModel(
      id: 1,
      name: '沢煮椀',
      type: RecipeType.dupe,
      thumbnail: 'B2sawaniwan.jpeg',
      pdf: 'B2sawaniwan.pdf',
    ),
    OpenDataRecipeModel(
      id: 2,
      name: 'かきたま汁',
      type: RecipeType.dupe,
      thumbnail: 'B2kakitamajiru.jpeg',
      pdf: 'B2kakitamajiru.pdf',
    ),
    OpenDataRecipeModel(
      id: 3,
      name: '鮭のごまみそ鍋',
      type: RecipeType.dupe,
      thumbnail: 'B3sakenogomamisonabe.jpeg',
      pdf: 'B3sakegomamiso.pdf',
    ),
    OpenDataRecipeModel(
      id: 4,
      name: 'ほうとう',
      type: RecipeType.dupe,
      thumbnail: 'B4houtou.jpeg',
      pdf: 'B4houtou.pdf',
    ),
    OpenDataRecipeModel(
      id: 5,
      name: 'そうめんすまし汁',
      type: RecipeType.dupe,
      thumbnail: 'B5soumen.jpg',
      pdf: 'B5soumen.pdf',
    ),
    OpenDataRecipeModel(
      id: 6,
      name: 'けんちん汁',
      type: RecipeType.dupe,
      thumbnail: 'B6kenchin.jpg',
      pdf: 'B6kenchin.pdf',
    ),
    OpenDataRecipeModel(
      id: 7,
      name: 'かぼちゃ団子汁',
      type: RecipeType.dupe,
      thumbnail: 'C1kabochadango.jpeg',
      pdf: 'C1kabochadango.pdf',
    ),
    OpenDataRecipeModel(
      id: 8,
      name: '卵とわかめのすまし汁',
      type: RecipeType.dupe,
      thumbnail: 'C2tamagowakame.jpeg',
      pdf: 'C2tamagowakamesumashijiru.pdf',
    ),
    OpenDataRecipeModel(
      id: 9,
      name: 'すり身汁',
      type: RecipeType.dupe,
      thumbnail: 'C3surimijiru.jpeg',
      pdf: 'C3surimijiru.pdf',
    ),
    OpenDataRecipeModel(
      id: 10,
      name: 'くじら汁',
      type: RecipeType.dupe,
      thumbnail: 'C4kujirajiru.jpeg',
      pdf: 'C4kujirajiru.pdf',
    ),
  ];

  static final List<OpenDataRecipeModel> originals = <OpenDataRecipeModel>[
    OpenDataRecipeModel(
      id: 11,
      name: 'いかの磯辺揚げ',
      type: RecipeType.original,
      thumbnail: 'A1ikaisobe.jpeg',
      pdf: 'A1ikanoisobeage.pdf',
    ),
    OpenDataRecipeModel(
      id: 12,
      name: '千草焼き',
      type: RecipeType.original,
      thumbnail: 'A3chigusayaki.jpeg',
      pdf: 'A3chigusayaki.pdf',
    ),
    OpenDataRecipeModel(
      id: 13,
      name: '鮭のごま風味揚げ',
      type: RecipeType.original,
      thumbnail: 'B1sakegoma.jpeg',
      pdf: 'B1sakegoma.pdf',
    ),
    OpenDataRecipeModel(
      id: 14,
      name: 'ぶりとなすのたたき風',
      type: RecipeType.original,
      thumbnail: 'B3buritonautataki.jpg',
      pdf: 'B3burinasutataki.pdf',
    ),
    OpenDataRecipeModel(
      id: 15,
      name: 'ぶりの南蛮煮',
      type: RecipeType.original,
      thumbnail: 'B5burinanban.jpeg',
      pdf: 'B5burinonanbanni.pdf',
    ),
    OpenDataRecipeModel(
      id: 16,
      name: '春採り昆布の佃煮、くじらの竜田揚げ',
      type: RecipeType.original,
      thumbnail: 'B6harutorikujira.jpg',
      pdf: 'B6konbukujira.pdf',
    ),
    OpenDataRecipeModel(
      id: 17,
      name: 'どさんこ汁',
      type: RecipeType.original,
      thumbnail: 'C1dosankojiru.jpeg',
      pdf: 'C1dosankojiru.pdf',
    ),
    OpenDataRecipeModel(
      id: 18,
      name: 'ぶり甘酢あん',
      type: RecipeType.original,
      thumbnail: 'C3buriamazuan.jpeg',
      pdf: 'C3buriamazuan.pdf',
    ),
    OpenDataRecipeModel(
      id: 19,
      name: '春愛しい',
      type: RecipeType.original,
      thumbnail: 'C4haruitoshii.jpeg',
      pdf: 'C4haruitosii.pdf',
    ),
    OpenDataRecipeModel(
      id: 20,
      name: 'かに飯',
      type: RecipeType.original,
      thumbnail: 'C4kanimeshi.jpeg',
      pdf: 'C4kanimeshi.pdf',
    ),
  ];

  static final List<OpenDataRecipeModel> steamConvectionOvens = <OpenDataRecipeModel>[
    OpenDataRecipeModel(
      id: 21,
      name: 'ブリの豆板醤焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon01.jpeg',
      pdf: 'stecon1-2.pdf',
    ),
    OpenDataRecipeModel(
      id: 22,
      name: 'お好み焼き風卵焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon02.jpeg',
      pdf: 'stecon1-2.pdf',
    ),
    OpenDataRecipeModel(
      id: 23,
      name: 'かんたんミートローフ',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon03.jpeg',
      pdf: 'stecon3-4.pdf',
    ),
    OpenDataRecipeModel(
      id: 24,
      name: 'タンドリーチキン',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon04.jpeg',
      pdf: 'stecon3-4.pdf',
    ),
    OpenDataRecipeModel(
      id: 25,
      name: 'たら西京焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon05.jpeg',
      pdf: 'stecon5-6.pdf',
    ),
    OpenDataRecipeModel(
      id: 26,
      name: 'おろしソース',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon06.jpeg',
      pdf: 'stecon5-6.pdf',
    ),
    OpenDataRecipeModel(
      id: 27,
      name: 'ホタテと鮭のバターしょうゆ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon07.jpeg',
      pdf: 'stecon7-8.pdf',
    ),
    OpenDataRecipeModel(
      id: 28,
      name: '鮭のちゃんちゃん焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon08.jpeg',
      pdf: 'stecon7-8.pdf',
    ),
    OpenDataRecipeModel(
      id: 29,
      name: '鶏肉のハーブパン粉焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon09.jpeg',
      pdf: 'stecon9-10.pdf',
    ),
    OpenDataRecipeModel(
      id: 30,
      name: 'ブリの薬味焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon10.jpeg',
      pdf: 'stecon9-10.pdf',
    ),
    OpenDataRecipeModel(
      id: 31,
      name: '豆腐の肉みそ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon11.jpeg',
      pdf: 'stecon11-12.pdf',
    ),
    OpenDataRecipeModel(
      id: 32,
      name: '豆のカレーチーズ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon12.jpeg',
      pdf: 'stecon11-12.pdf',
    ),
    OpenDataRecipeModel(
      id: 33,
      name: 'ホタテのトマトソース焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon13.jpeg',
      pdf: 'stecon13-14.pdf',
    ),
    OpenDataRecipeModel(
      id: 34,
      name: 'たらチーズ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon14.jpeg',
      pdf: 'stecon13-14.pdf',
    ),
    OpenDataRecipeModel(
      id: 35,
      name: '豆腐入りハンバーグ(きのこソース)',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon15.jpeg',
      pdf: 'stecon15-16.pdf',
    ),
    OpenDataRecipeModel(
      id: 36,
      name: '鱈カレーチーズ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon16.jpeg',
      pdf: 'stecon15-16.pdf',
    ),
    OpenDataRecipeModel(
      id: 37,
      name: '鮭生姜焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon17.jpeg',
      pdf: 'stecon17-18.pdf',
    ),
    OpenDataRecipeModel(
      id: 38,
      name: 'ブリの洋風ソースかけ',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon18.jpeg',
      pdf: 'stecon17-18.pdf',
    ),
    OpenDataRecipeModel(
      id: 39,
      name: '鮭のごまみそ焼き',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon19.jpeg',
      pdf: 'stecon19-20.pdf',
    ),
    OpenDataRecipeModel(
      id: 40,
      name: 'ブリ五香焼き',
      type: RecipeType.steamConvectionOven,
      pdf: 'stecon19-20.pdf',
    ),
    OpenDataRecipeModel(
      id: 41,
      name: 'お月見団子',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon21.jpeg',
      pdf: 'stecon21.pdf',
    ),
    OpenDataRecipeModel(
      id: 42,
      name: 'なすのミートグラタン',
      type: RecipeType.steamConvectionOven,
      thumbnail: 'stecon22.jpeg',
      pdf: 'stecon22.pdf',
    ),
  ];

  static final List<OpenDataRecipeModel> others = <OpenDataRecipeModel>[
    OpenDataRecipeModel(
      id: 43,
      name: '学校給食のだしの取り方',
      pdf: 'dashi.pdf',
    ),
    OpenDataRecipeModel(
      id: 44,
      name: '児童が考案したメニュー',
      pdf: 'jidou.pdf',
    ),
  ];
}
