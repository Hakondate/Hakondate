import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scroll_view_model.g.dart';

@Riverpod(keepAlive: true)
class ScrollViewModel extends _$ScrollViewModel {
  //やること
  //現在開いている画面のボタンを押すとトップに戻る
  //画面切り替え時にスクロール位置を保持する
  //戻ってきた時に、前回のスクロール位置が表示される

  @override
  ScrollController build({required String path}) {
    debugPrint('$path scrollViewModel called.');
    return ScrollController();
  }

  void scrollToTop() {
    state.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
    );
  }
}
