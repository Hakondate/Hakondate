import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/recipe/recipe_type.dart';
import 'package:hakondate/view/recipe/open_data_recipe_grid.dart';
import 'package:hakondate/view/recipe/open_data_recipe_header.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('レシピ'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: PaddingSize.normal,
              horizontal: PaddingSize.minimum,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                OpenDataRecipeHeader(
                  isRemoveTopMargin: true,
                  title: Text('だしを活用した和食メニュー'),
                  description: Text('★ふだん洋風だしを使って作っている，カレーやスープなどのメニューを，和風だしを使ってアレンジしてみるのもお勧めです．'),
                ),
                OpenDataRecipeGrid(type: RecipeType.dupe),
                OpenDataRecipeHeader(
                  title: Text('各調理場自慢のオリジナルレシピ'),
                ),
                OpenDataRecipeGrid(type: RecipeType.original),
                OpenDataRecipeHeader(
                  title: Text('スチームコンベクションオーブンを使ったメニュー'),
                  description: Text(
                      'スチームコンベクションオーブンを使用したメニューです．ご家庭では，オーブントースターで代用できます．\n'
                      'もちろん，フライパンやオーブンレンジ，魚焼きグリルなどを使用しても大丈夫です．\n\n'
                      '★材料は４人分です．目安量なので，味付けなどはお好みで調整してください．\n'
                      '★給食で実施した材料を載せています。ご家庭にある材料でいろいろアレンジしてお試しください．'
                  ),
                ),
                OpenDataRecipeGrid(type: RecipeType.steamConvectionOven),
                OpenDataRecipeHeader(
                  title: Text('その他'),
                  description: Text('食育活動の一環として児童が考案し，給食に取り入れたメニューを紹介します．'),
                ),
                OpenDataRecipeGrid(type: RecipeType.other),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
