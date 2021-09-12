import 'package:flutter/material.dart';
import 'package:hakondate_v2/unit/size.dart';

class SettingLabel extends StatelessWidget {
  SettingLabel({
    required this.title,
    this.trailing = '選択',
    this.onTap,
  });

  final String title;
  final String trailing;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.only(
          left: PaddingSize.content,
          right: PaddingSize.content,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: FontSize.label),
        ),
        trailing: Text(
          trailing,
          style: TextStyle(fontSize: FontSize.label, color: Colors.black38),
        ),
        onTap: (onTap != null)? onTap!() : () {},
      ),
    );
  }
}
