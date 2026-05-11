# はこんだて
## サービス概要

## DevContainer (Android)
このリポジトリでは、VS Code / Cursor 向けに Android 開発用 DevContainer を提供します。  
正式サポートする構成は以下です。

- コンテナ: Ubuntu 24.04 ベースの `linux/amd64` (`takuto1127/hakondate-devcontainer:2026.05.11`)
- Flutter: `FVM` で `.fvmrc` の `3.27.3` を利用
- Android SDK: コンテナ内に導入
- 実行先: macOS / Windows ホスト側で起動した Android Emulator または実機

### 前提
- DevContainer は `linux/amd64` で起動します。
- Apple Silicon Mac では Docker Desktop による x64 エミュレーション実行になるため、ビルド速度はネイティブ arm64 より低下します。
- Android Emulator はコンテナ内では起動しません。
- Docker Desktop on macOS arm64 では、Android Emulator に必要な仮想化支援を Linux コンテナへ実用的に渡せないため、コンテナ内 Emulator は正式サポートしません。

### セットアップ
1. VS Code または Cursor でこのリポジトリを開く。
2. `Reopen in Container` を実行する。
   - DevContainer は Dockerfile をローカルビルドせず、`takuto1127/hakondate-devcontainer:2026.05.11` を pull して使います。
3. 初回起動時に `postCreate.sh` が以下を自動実行する。
   - ホスト依存の Flutter / Gradle 生成物のクリーンアップ
   - `fvm install`
   - `fvm use --force`
   - `fvm flutter config --android-sdk /opt/android-sdk`
   - `fvm flutter pub get`
   - `fvm flutter doctor -v`

### 生成物の扱い
- ホスト macOS 上で作られた `.dart_tool/flutter_build`, `build`, `android/.gradle` などの生成物は、`/Users/...` のようなホスト絶対パスを保持することがあります。
- その状態で DevContainer 内から `fvm flutter run` を実行すると、コンテナ内に存在しないホストパスを参照してビルドが失敗します。
- `postCreate.sh` では以下を自動削除し、コンテナ内で再生成させます。
  - `.dart_tool/flutter_build`
  - `build`
  - `android/.gradle`
  - `.flutter-plugins`
  - `.flutter-plugins-dependencies`
- Android の `local.properties` も毎回コンテナ向けに再生成します。
- さらに、`FLUTTER_BUILD_DIR` を `/home/vscode/.cache/hakondate/flutter-build` に向け、Flutter の中間生成物を bind mount ではなくコンテナローカルへ逃がします。

### トラブルシュート
`fvm flutter run` がホストパス `/Users/...` を参照して失敗する場合は、コンテナ内で次を実行してから再試行します。

```bash
rm -rf .dart_tool/flutter_build build android/.gradle .flutter-plugins .flutter-plugins-dependencies
rm -rf /home/vscode/.cache/hakondate/flutter-build
fvm flutter pub get
fvm flutter run --dart-define=FLAVOR=dev
```

Gradle の file watcher は bind mount 環境で不安定なため、`android/gradle.properties` で無効化しています。

Android 15 の 16 KB page-size エミュレータ (`sdk gphone16k arm64` など) を使う場合は、AGP `8.2.1` では未圧縮 native lib の packaging で `INSTALL_FAILED_INVALID_APK` が起きることがあります。  
このリポジトリでは `android/app/build.gradle` で `jniLibs.useLegacyPackaging true` を設定し、開発時にインストール失敗しないようにしています。

### ホスト側 Emulator 連携
Android Emulator はホスト側で起動します。コンテナ内からはホストの ADB サーバーへ接続します。

#### macOS / Windows ホスト側
1. Android Studio などで Emulator を起動する。
2. ホスト側で ADB を TCP 5037 で待ち受ける状態にする。

例:

```bash
adb kill-server
adb -a nodaemon server start
```

#### DevContainer 側
DevContainer 側は `ADB_SERVER_SOCKET=tcp:host.docker.internal:5037` を使ってホスト ADB に接続します。

```bash
adb devices
```

`flutter run` は VM Service 接続のために `adb forward` を使います。ホスト ADB サーバーに接続している場合、この転送ポートはホスト側に作られるため、DevContainer からは VM Service proxy を併用します。

### コンテナ内での基本コマンド
```bash
adb devices
fvm flutter devices
.devcontainer/flutter-run-host-adb.sh --dart-define=FLAVOR=dev
```

既定では VM Service に `50000`、DDS に `50001` を使います。ホスト側でポートが埋まっている場合は、次のように変更できます。

```bash
FLUTTER_HOST_VMSERVICE_PORT=50100 FLUTTER_DDS_PORT=50101 .devcontainer/flutter-run-host-adb.sh --dart-define=FLAVOR=dev
```

VS Code の Run/Debug から通常実行する場合は、`dev` / `stg` / `prod` を選びます。host ADB + VM Service proxy を使う場合は、`dev-devcontainer` / `stg-devcontainer` / `prod-devcontainer` を選びます。

VS Code / Cursor のデバッグ機能を使う場合は、`dev-devcontainer` / `stg-devcontainer` / `prod-devcontainer` を選びます。これらは Dart-Code 標準の debug 経路を使い、`preLaunchTask` で `.devcontainer/vmservice-proxy.sh` を起動します。

ターミナルから手動で起動する場合だけ、次を使います。

```bash
.devcontainer/flutter-run-host-adb.sh --dart-define=FLAVOR=dev
```

`flutter-run-host-adb.sh` は手動実行用のラッパーです。VS Code の launch から直接実行すると Dart-Code の Debug UI、ブレークポイント、Variables、Call Stack、Hot Reload ボタンが効かないため、launch では使いません。

### 確認コマンド
```bash
java -version
sdkmanager --list
fvm --version
fvm flutter --version
fvm flutter doctor -v
fvm flutter analyze
fvm flutter build apk --debug --dart-define=FLAVOR=dev
```

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
1. Notionの[デプロイ](https://www.notion.so/hakondate/05c751dbd24645a1a40726c62e7c91fe?pvs=4)ページの必要なファイルのとこにアップロードされている`key.jks`と`key.properties`をダウンロードし，Hakondateのandroidディレクトリに配置する．
2. `fvm flutter build appbundle --dart-define=FLAVOR=prod`をHakondateディレクトリで実行する．
