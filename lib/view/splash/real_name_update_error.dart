import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';

class RealNameUpdateError extends StatelessWidget {
  const RealNameUpdateError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.brand.primary,
      body: const Center(
        child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'エラー発生',
                  style: TextStyle(fontSize: 33),
                ),
                Text(
                  '\n今回のアップデートより、\nデータベースの整合成を取ることができなくなりました。\n',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '解決方法',
                  style: TextStyle(fontSize: 27),
                ),
                Text(
                  '\n本アプリをアンインストールし、その後アプリストアから\n再インストールしてください。\n',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '補足',
                  style: TextStyle(fontSize: 27),
                ),
                Text(
                  '\n上記の操作により、登録していたユーザー情報は削除されます。\nインストール後に再度ご登録していただきますようよろしくお願いいたします。\n',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'ご迷惑をおかけして\n申し訳ありません。',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                )
              ],
            )),
      ),
    );
  }
}
