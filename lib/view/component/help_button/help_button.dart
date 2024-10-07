import 'package:flutter/material.dart';
import 'package:hakondate/constant/size.dart';

import 'package:hakondate/view/help/help_frame.dart';

class HelpButton extends StatelessWidget {
  const HelpButton({required this.helpFrame, super.key});
  final HelpFrame helpFrame;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.help,
        size: IconSize.help,
      ),
      color: Theme.of(context).primaryIconTheme.color,
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          backgroundColor: Colors.white,
          builder: (BuildContext context) => Container(
            padding: const EdgeInsets.all(MarginSize.normal),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: helpFrame,
          ),
        );
      },
    );
  }
}
