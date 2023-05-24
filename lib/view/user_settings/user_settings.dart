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
        title: const Text('お子様情報一覧'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 8,
            ),
            _userSettingsCard(
              context,
              name: 'あとりンゴ',
              schoolId: 1,
              schoolYear: 2,
              isActive: true,
            ),
            _userSettingsCard(
              context,
              name: 'Micad',
              schoolId: 1,
              schoolYear: 3,
              isActive: false,
            ),
            const SizedBox(
              height: 8,
            ),
            _userAddButton(),
          ],
        ),
      ),
    );
  }

  Widget _userSettingsCard(
    BuildContext context, {
    required String name,
    required int schoolId,
    required int schoolYear,
    required bool isActive,
  }) {
    return GestureDetector(
      onTap: () async {
        if (!isActive) {
          return showDialog(
            context: context,
            builder: _userSwichDialog,
          );
        }
      },
      child: Card(
        margin: const EdgeInsets.symmetric(
          vertical: MarginSize.minimum,
          horizontal: MarginSize.normalHorizontal,
        ),
        elevation: 0,
        shadowColor: AppColor.brand.secondary,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isActive
                ? AppColor.brand.secondary
                : AppColor.ui.secondaryUltraLight,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(PaddingSize.normal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: FontSize.subheading,
                      height: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '五稜郭中学校',
                        style: TextStyle(
                          fontSize: FontSize.body,
                          color: AppColor.text.gray,
                          height: 1,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$schoolYear年',
                        style: TextStyle(
                          fontSize: FontSize.body,
                          color: AppColor.text.gray,
                          height: 1,
                        ),
                      ),
                    ],
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
          routemaster.push('-1');
        },
      ),
    );
  }
}
