import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';

class PaddedSentence extends StatelessWidget {
  const PaddedSentence ({
    required this.text,    
    super.key
    });

    final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: always_specify_types
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: FontSize.body,
            ),
          ),
        ),
        const SizedBox(height: SpaceSize.paragraph),
      ],
    );
  }
}
