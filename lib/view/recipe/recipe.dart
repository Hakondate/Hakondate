import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/recipe/recipe_type.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/bottom_bar/app_bottom_navigation_bar_state.dart';
import 'package:hakondate/state/recipe/recipe_state.dart';
import 'package:hakondate/util/scroll/scroll_function.dart';
import 'package:hakondate/view/recipe/open_data_recipe_grid.dart';
import 'package:hakondate/view/recipe/open_data_recipe_header.dart';
import 'package:hakondate/view_model/multi_page/bottom_bar/app_bottom_navigation_bar_view_model.dart';
import 'package:hakondate/view_model/multi_page/scroll/scroll_view_model.dart';
import 'package:hakondate/view_model/single_page/recipe/recipe_view_model.dart';

//TODO: 全ページのbucketの宣言方法考える
final PageStorageBucket bucket = PageStorageBucket();

class Recipe extends StatelessWidget {
  const Recipe({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('レシピ'),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, _) {
          final RecipeState state = ref.watch(recipeViewModelProvider);
          return SingleChildScrollView(
            key: PageStorageKey<String>(routemaster.currentConfiguration!.fullPath),
            controller: state.scrollController,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: PaddingSize.normal,
                horizontal: PaddingSize.minimum,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  OpenDataRecipeHeader(
                    isRemoveTopMargin: true,
                    title: Text('だしを活用した和食メニュー'),
                    description: Text(
                      '★ふだん洋風だしを使って作っている，カレーやスープなどのメニューを，和風だしを使ってアレンジしてみるのもお勧めです．',
                    ),
                  ),
                  OpenDataRecipeGrid(type: RecipeType.dupe),
                  OpenDataRecipeHeader(
                    title: Text('各調理場自慢のオリジナルレシピ'),
                  ),
                  OpenDataRecipeGrid(type: RecipeType.original),
                  OpenDataRecipeHeader(
                    title: Text('スチームコンベクションオーブンを使ったメニュー'),
                    description: Text('スチームコンベクションオーブンを使用したメニューです．ご家庭では，オーブントースターで代用できます．\n'
                        'もちろん，フライパンやオーブンレンジ，魚焼きグリルなどを使用しても大丈夫です．\n\n'
                        '★材料は４人分です．目安量なので，味付けなどはお好みで調整してください．\n'
                        '★給食で実施した材料を載せています。ご家庭にある材料でいろいろアレンジしてお試しください．'),
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
          );
        },
      ),
    );
  }
}
