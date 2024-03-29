import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';

class HelpDialog extends StatelessWidget {
  const HelpDialog({
    required this.title,
    required this.content,
    super.key,
  });

  final Widget title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: MarginSize.minimum),
            child: Icon(
              Icons.help,
              color: Theme.of(context).primaryIconTheme.color,
            ),
          ),
          title,
        ],
      ),
      content: content,
    );
  }
}
