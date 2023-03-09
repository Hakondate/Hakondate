import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/router/routes.dart';

class SettingLabel extends StatelessWidget {
  const SettingLabel({
    required this.title,
    required this.dialList,
    required this.completed,
    required this.trailing,
    super.key,
  });

  final String title;
  final List<String> dialList;
  final void Function(int) completed;
  final String trailing;

  void _showDialPickerModal(BuildContext context) {
    int selected = 0;
    showModalBottomSheet<dynamic>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 2 / 5,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Text('$titleを選択'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    completed(selected);
                    routemaster.pop(context);
                  },
                  child: Text(
                    '完了',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.text.blue,
                    ),
                  ),
                ),
              ],
            ),
            body: CupertinoPicker.builder(
              itemExtent: 40,
              diameterRatio: 1,
              childCount: dialList.length,
              onSelectedItemChanged: (int index) => selected = index,
              itemBuilder: (_, int index) => Text(dialList[index]),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.brand.primary,
      child: ListTile(
        contentPadding: const EdgeInsets.only(
          left: PaddingSize.content,
          right: PaddingSize.content,
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: FontSize.label),
        ),
        trailing: Text(
          trailing,
          style: TextStyle(
            color: AppColor.text.blackMid,
            fontSize: FontSize.label,
          ),
        ),
        onTap: () => _showDialPickerModal(context),
      ),
    );
  }
}
