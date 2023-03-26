import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';

class UnderlinedTitle extends StatelessWidget {
  const UnderlinedTitle ({
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
        Text(
          text, 
          style: const TextStyle(
            fontSize: 25,
            decoration: TextDecoration.underline, 
            decorationStyle: TextDecorationStyle.dashed,
            decorationColor: Colors.orange,
          ),
        ),
        const SizedBox(height: SpaceSize.line),
      ],
    );
  }
}
