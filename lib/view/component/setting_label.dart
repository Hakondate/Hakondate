import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hakondate_v2/unit/size.dart';

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
                    Navigator.pop(context);
                  },
                  child: const Text(
                    '完了',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
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
    return Container(
      color: Colors.white,
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
          style: const TextStyle(fontSize: FontSize.label, color: Colors.black38),
        ),
        onTap: () => _showDialPickerModal(context),
      ),
    );
  }
}
