import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';

class NonLunchesDayBody extends StatelessWidget {
  const NonLunchesDayBody({
    Key? key,
    required this.imageFileName,
    required this.text,
  }) : super(key: key);

  final String imageFileName;
  final String text;

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/menu_status/' + imageFileName,
            width: _screenWidth / 2,
          ),
          const SizedBox(height: MarginSize.normal),
          Text(
            text,
            style: TextStyle(
              fontSize: 24.0,
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
