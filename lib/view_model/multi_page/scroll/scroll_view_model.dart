import 'package:flutter/material.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';
import 'package:hakondate/view_model/single_page/letter/letter_view_model.dart';
import 'package:hakondate/view_model/single_page/recipe/recipe_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/state/scroll/scroll_state.dart';

part 'scroll_view_model.g.dart';

@Riverpod(keepAlive: true)
class ScrollViewModel extends _$ScrollViewModel {
  //全画面のscrollConrollerを持たずに、
  //ref.read(画面名ViewModel.notifier).画面名ScrollController
  //のように取得した方が良い
  //TODO: これをbuildする場所を考える

  //やること
  //現在開いている画面のボタンを押すとトップに戻る
  //画面切り替え時にスクロール位置を保持する
  //戻ってきた時に、前回のスクロール位置が表示される

  @override
  ScrollController build({required String path}) {
    debugPrint('scrollViewModel called.');
    return ScrollController();
  }

//これが呼ばれたら、pathによって適切なscrollControllerに対して必要な処理を行う
  void scrollToTop() {
    state.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
    );
  }
}

//lib/view/daily/daily.dart
