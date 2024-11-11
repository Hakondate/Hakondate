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
            return Dialog(
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(
                  left: MarginSize.minimum,
                  right: MarginSize.minimum,
                  top: MarginSize.minimum,
                ),
                itemCount: helpFrame.length,
                itemBuilder: (BuildContext contextex, int index) {
                  return helpFrame[index];
                },
              ),
            );
          },
        );
      },
    );
  }
}
