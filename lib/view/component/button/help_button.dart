import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view/help/help_frame.dart';

class HelpButton extends StatelessWidget {
  const HelpButton({required this.helpFrame, super.key});
  final List<HelpFrame> helpFrame;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.help,
        size: IconSize.help,
      ),
      color: Theme.of(context).primaryIconTheme.color,
      onPressed: () {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              contentPadding: const EdgeInsets.only(
                top: MarginSize.minimum,
                right: MarginSize.minimum,
                left: MarginSize.minimum,
              ),
              content: SingleChildScrollView(
                child: Column(
                  children: helpFrame,
                ),
              ),
              actionsPadding: EdgeInsets.zero,
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.disabled_by_default),
                  color: Theme.of(context).primaryIconTheme.color,
                ),
              ],
            );
          },
        );
      },
    );
  }
}
