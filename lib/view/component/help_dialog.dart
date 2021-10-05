import 'package:flutter/material.dart';

import 'package:hakondate_v2/unit/size.dart';

class HelpDialog {
  HelpDialog(
    BuildContext context, {
    required String title,
    required String content,
  }) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: MarginSize.minimum),
                child: Icon(Icons.help,
                    color: Theme.of(context).primaryIconTheme.color),
              ),
              Text(title),
            ],
          ),
          content: Text(content),
        );
      },
    );
  }
}
