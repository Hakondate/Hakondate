import 'package:flutter/material.dart';

class HelpDialog {
  HelpDialog(BuildContext context,
      {required String title, required String content,}) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Row(
            children: [
              Icon(Icons.help, color: Theme.of(context).primaryIconTheme.color),
              Text(title),
            ],
          ),
          content: Text(content),
        );
      },
    );
  }
}
