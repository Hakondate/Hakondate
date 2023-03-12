import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';

class UserSettings extends StatelessWidget {
  const UserSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー情報一覧'),
      ),
      body: SingleChildScrollView(
        // physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 8.0,
            ),
            _userSettingsCard(context,
                name: 'あとりンゴ', schoolId: 1, schoolYear: 2, isActive: true),
            _userSettingsCard(context,
                name: 'Micad', schoolId: 1, schoolYear: 3, isActive: false),
            const SizedBox(
              height: 8.0,
            ),
            _userAddButton(),
          ],
        ),
      ),
    );
  }

  Widget _userSettingsCard(BuildContext context,
      {required String name,
      required int schoolId,
      required int schoolYear,
      required bool isActive}) {
    return GestureDetector(
      onTap: () {
        if (!isActive) {
          showDialog(
              context: context,
              builder: (BuildContext context) => _userSwichDialog(context));
        }
      },
      child: Card(
        margin: const EdgeInsets.symmetric(
          vertical: MarginSize.minimum,
          horizontal: MarginSize.normalHorizontal,
        ),
        elevation: isActive ? 0 : 0,
        shadowColor: AppColor.brand.secondary,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isActive
                ? AppColor.brand.secondary
                : AppColor.ui.secondaryUltraLight,
            width: isActive ? 2 : 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(PaddingSize.normal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: FontSize.subheading,
                      height: 1.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Row(children: <Widget>[
                      Text(
                        '五稜郭中学校',
                        style: TextStyle(
                          fontSize: FontSize.body,
                          color: AppColor.text.gray,
                          height: 1.0,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '$schoolYear年',
                        style: TextStyle(
                          fontSize: FontSize.body,
                          color: AppColor.text.gray,
                          height: 1.0,
                        ),
                      ),
                    ]),
                  )
                ],
              ),
              IconButton(
                isSelected: isActive,
                onPressed: isActive
                    ? () {
                        routemaster.push('1');
                      }
                    : null,
                icon: Icon(
                  Icons.edit,
                  color: isActive
                      ? AppColor.brand.secondary
                      : AppColor.ui.secondaryUltraLight,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _userSwichDialog(BuildContext context) {
    return HakondateDialog(
      title: const Text('ユーザーを変更しますか？'),
      body: const Text('はいを押すとユーザーが変更されます'),
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

  Widget _userAddButton() {
    return Center(
      child: FloatingActionButton(
          elevation: 3,
          backgroundColor: AppColor.ui.secondaryUltraLight,
          child: Icon(
            Icons.person_add,
            color: AppColor.brand.secondary,
          ),
          onPressed: () {
            debugPrint('ユーザー追加ボタンが押された！');
          }),
    );
  }
}
