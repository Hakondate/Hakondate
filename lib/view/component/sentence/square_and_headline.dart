import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';

class SquareAndHeading extends StatelessWidget {
  const SquareAndHeading ({
    required this.text,    
    super.key,
    });

    final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: always_specify_types
      children: [
        Row(
          // ignore: always_specify_types
          children: [
            const SizedBox(
              width: SpaceSize.line,
              height: SpaceSize.paragraph,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.orange),
              ),
            ),
            const SizedBox(
              width: SpaceSize.line,
              height: SpaceSize.paragraph,
            ),
            Text(
              text, 
              style: const TextStyle(
                fontSize:FontSize.subheading,
              ),
            ),
          ],
        ),
        const SizedBox(height: SpaceSize.line),
      ],
    );  
  }
}
 
