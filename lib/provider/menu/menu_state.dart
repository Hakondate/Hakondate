import 'package:flutter/foundation.dart'; // .freezed.dart側で利用
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate_v2/model/menu/menu_model.dart';

part 'menu_state.freezed.dart';

/// freezedを用いたState定義
///
/// Q. このクラスの役割
/// A. 各画面で利用される変数(今回は[menus])の保持
///
/// Q. freezedの効果
/// A. immutableなコードの実現，一度生成されたデータ([menus])は
///     不変であり変更がある場合は既存のものが破棄され新規のものと置き換わる
///
/// Q. [abstract]の意味
/// A. 継承専用のクラスであることを定義，このクラスをそのまま宣言することはできない
///
/// Q. [factory]の意味
/// A. 返り値のあるコンストラクタを定義
///
/// Q. .loading()の使い道
/// A. menusのデータを読み込む際や，DBとの通信中を表現する

@freezed
abstract class MenuState with _$MenuState {
  const factory MenuState({
    @Default(<MenuModel>[]) List<MenuModel> menus
  }) = _MenuState;
  const factory MenuState.loading() = _MenuStateLoding;
}