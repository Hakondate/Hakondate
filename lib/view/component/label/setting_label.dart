import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/router/routes.dart';

class SettingLabel extends StatelessWidget {
  const SettingLabel({
    Key? key,
    required this.title,
    required this.dialList,
    required this.completed,
    required this.trailing,
  }) : super(key: key);

  final String title;
  final List<String> dialList;
  final void Function(int) completed;
  final String trailing;

  void _showDialPickerModal(BuildContext context) {
    int _selected = 0;
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 2 / 5,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Text('$titleを選択'),
              actions: [
                TextButton(
                  onPressed: () {
                    completed(_selected);
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
              onSelectedItemChanged: (index) => _selected = index,
              itemBuilder: (_, index) => Text(dialList[index]),
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
