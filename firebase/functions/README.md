# 環境構築
firebase cliのインストール

`npm install -g firebase-tools`

はこんだてのfirebaseプロジェクトにアクセスできるアカウントでログイン

`firebase login`

# ビルド
`tsc --watch`

# ローカルで実行

`firebase emulators:start --only functions `

# デプロイ
`firebase deploy --only functions`
