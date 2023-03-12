import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';

class UserSettingsDetail extends StatelessWidget {
  const UserSettingsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー情報詳細'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: MarginSize.normal,
          horizontal: MarginSize.normalHorizontal,
        ),
        child: Column(
          children: [
            _tappablePairText("ニックネーム", 'あとりンゴ'),
            const Divider(),
            _tappablePairText("学校", '五稜郭中学校'),
            const Divider(),
            _tappablePairText('学年', '3年生'),
            SizedBox(
              height: 40,
            ),
            _deletUserButton(context),
          ],
        ),
      ),
    );
  }

  Widget _tappablePairText(String key, String value) {
    return GestureDetector(
      onTap: () {
        debugPrint("$keyが押された！");
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    key,
                    style: TextStyle(
                      fontSize: FontSize.label,
                      color: AppColor.text.primary,
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: FontSize.body,
                      color: AppColor.text.gray,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.chevron_right,
              color: AppColor.text.blackMid,
            )
          ],
        ),
      ),
    );
  }

  Widget _deletUserButton(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text(
          "ユーザーを削除",
          style: TextStyle(
            color: Theme.of(context).colorScheme.error,
            fontSize: FontSize.body,
          ),
        ),
        onPressed: () {
          debugPrint('削除ボタンが押された！');
          showDialog(
            context: context,
            builder: (_) => _userDeleteDialog(context),
          );
        },
      ),
    );
  }

  Widget _userDeleteDialog(BuildContext context) {
    return HakondateDialog(
      title: const Text('ユーザーを削除しますか？'),
      body: const Text('はいを押すとユーザーが削除されます'),
      firstAction: HakondateActionButton.primary(
        text: const Text('はい'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      secondAction: HakondateActionButton(
        text: const Text('いいえ'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
