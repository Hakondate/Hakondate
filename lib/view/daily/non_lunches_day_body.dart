import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';

class NonLunchesDayBody extends StatelessWidget {
  const NonLunchesDayBody({
    required this.imageFileName,
    required this.text,
    super.key,
  });

  final String imageFileName;
  final String text;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/status/menu_status/$imageFileName',
            width: screenWidth / 2,
          ),
          const SizedBox(height: MarginSize.normal),
          Text(
            text,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColor.text.primary,
            ),
          ),
          const SizedBox(height: MarginSize.kTabBarHeight),
        ],
      ),
    );
  }
}
