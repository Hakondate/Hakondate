# はこんだて
## サービス概要

## 利用技術・依存関係
### 状態管理
- [flutter_riverpod](https://pub.dev/packages/riverpod) : 状態管理パッケージ，コンパイル時のエラー検知や無駄なクラスのネストを回避できる
- [state_notifier](https://pub.dev/packages/state_notifier) : 状態値をimmutableに扱うためのパッケージ
- [freezed](https://pub.dev/packages/freezed/install) : State Notifierをより簡素に実装するためのパッケージ
  - freezed_annotation
  - build_runner

## コーディング規約
基本的には[Effective Dart](https://dart.dev/guides/language/effective-dart)と[Style guide for Flutter repo](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo)に従う  
###### 翻訳してくれているサイト
> [Effective Dartまとめ](https://qiita.com/mkosuke/items/42c19d7edbf111f7fb71)

**実際にあったミス**
