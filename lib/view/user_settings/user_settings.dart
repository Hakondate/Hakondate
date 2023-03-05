import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/router/routes.dart';

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
            builder: (_) {
              return AlertDialog(
                title: Text("ユーザーを変更しますか？"),
                content: Text("OKを押すと，ユーザーが変更されます"),
                actions: <Widget>[
                  // ボタン領域
                  TextButton(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: AppColor.text.blue,
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        AppColor.text.blue,
                      ),
                    ),
                    child: Text("OK"),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              );
            },
          );
        }
      },
      child: Card(
        margin: const EdgeInsets.symmetric(
          vertical: MarginSize.minimum,
          horizontal: MarginSize.normalHorizontal,
        ),
        elevation: isActive ? 5 : 0,
        shadowColor: AppColor.brand.secondary,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isActive
                ? AppColor.brand.secondary
                : AppColor.brand.secondaryLight,
            width: isActive ? 2.0 : 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        // color: isActive ? AppColor.ui.secondaryUltraLight : AppColor.ui.white,
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
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Row(children: [
                      Text('五稜郭中学校',
                          style: TextStyle(
                              fontSize: FontSize.body,
                              color: AppColor.text.gray,
                              height: 1.0)),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text('$schoolYear年',
                          style: TextStyle(
                              fontSize: FontSize.body,
                              color: AppColor.text.gray,
                              height: 1.0))
                    ]),
                  )
                ],
              ),
              IconButton(
                // constraints: const BoxConstraints(maxHeight: FontSize.subheading),
                onPressed: () {
                  routemaster.push('1');
                },
                icon: Icon(
                  Icons.edit,
                  // size: FontSize.subheading,
                  color: AppColor.brand.secondary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _userAddButton() {
    return Center(
      child: FloatingActionButton(
          backgroundColor: AppColor.text.blue,
          child: const Icon(
            Icons.person_add,
          ),
          onPressed: () {
            debugPrint('ユーザー追加ボタンが押された！');
          }),
    );
  }
}
