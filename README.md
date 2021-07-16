# はこんだて
## サービス概要

## 構成
### 状態管理
- [flutter_riverpod](https://pub.dev/packages/riverpod) : 状態管理パッケージ，コンパイル時のエラー検知や無駄なクラスのネストを回避できる
- [state_notifier](https://pub.dev/packages/state_notifier) : 状態値をimmutableに扱うためのパッケージ
- [freezed](https://pub.dev/packages/freezed/install) : State Notifierをより簡素に実装するためのパッケージ
  - freezed_annotation
  - build_runner

### アーキテクチャ
MVVMを採用  
[flutter-architecture-blueprints](https://github.com/wasabeef/flutter-architecture-blueprints)などを参考に構築  

**概要**
- view : Widgetの描画
- view_model : viewで受け取った入力の処理
- provider : modelを実際にviewmodel内で利用されるクラスに格納したもの
- model : view_modelで扱うクラスの管理
- repository : 保存データへのアクセス管理
  - local : ローカルデータとの通信処理
  - remote : リモートデータとの通信処理

## コーディング規約
基本的には[Effective Dart](https://dart.dev/guides/language/effective-dart)と[Style guide for Flutter repo](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo)に従う  
###### 翻訳してくれているサイト
> [Effective Dartまとめ](https://qiita.com/mkosuke/items/42c19d7edbf111f7fb71)

**実際にあったミス**
