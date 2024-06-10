# はこんだて
## サービス概要

## 構成
### 利用技術・パッケージ
#### 状態管理
- [Riverpod](https://pub.dev/packages/riverpod) : 状態管理パッケージ，コンパイル時のエラー検知や無駄なクラスのネストを回避できる
- [State Notifier](https://pub.dev/packages/state_notifier) : 状態値をimmutableに扱うためのパッケージ
- [freezed](https://pub.dev/packages/freezed/install) : State Notifierをより簡素に実装するためのパッケージ
  - freezed_annotation
  - build_runner

#### ローカルデータ
- SQLite
- [Moor](https://moor.simonbinder.eu/) : SQLiteとAppを繋ぐパッケージ，DB操作とかが楽になる

#### 遷移(Routing)管理
- [Navigator 2.0](https://docs.google.com/document/d/1Q0jx0l4-xymph9O6zLaOY4d_f7YFpNWX_eGbzYxr9wY/edit#) : 宣言的な遷移の実装ができるパッケージ
- 2022/3/6 Naivigator 2.0 がわかりにくいので，それをラップしたパッケージである[Routemaster](https://pub.dev/packages/routemaster)を利用しています

### アーキテクチャ
MVVMを採用  
[flutter-architecture-blueprints](https://github.com/wasabeef/flutter-architecture-blueprints)などを参考に構築  

Null Safetyを採用  
[Sound null safety in Dart](https://dart.dev/null-safety)  
[Null safety in Flutter](https://flutter.dev/docs/null-safety)

**概要**
- view : Widgetの描画
- view_model : viewで受け取った入力の処理
- model : view_modelで扱うクラスの管理
- repository : 保存データへのアクセス管理
  - local : ローカルデータとの通信処理
  - remote : リモートデータとの通信処理

## コーディング規約
基本的には[Effective Dart](https://dart.dev/guides/language/effective-dart)と[Style guide for Flutter repo](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo)に従う  
###### 翻訳してくれているサイト
> [Effective Dartまとめ](https://qiita.com/mkosuke/items/42c19d7edbf111f7fb71)

**実際にあったミス**
1. リストの要素，Widgetツリー，オプション引数の最後の要素にカンマをつけてない
    ```
    Widget(
      childlen: [
        Widget1(),
        Widget2()  // ここのカンマ(,)
      ]            // ここも
    );
    ```
## リリースビルド手順
### Android
Notionの[デプロイ](https://www.notion.so/hakondate/05c751dbd24645a1a40726c62e7c91fe?pvs=4)ページの必要なファイルのとこにアップロードされている`key.jks`と`key.properties`をダウンロードし，Hakondateのandroidディレクトリに配置する．
