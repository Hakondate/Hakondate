import 'package:flutter/material.dart';

import 'package:hakondate_v2/constant/app_color.dart';

class NonLunchesDayCalendarTile extends StatelessWidget {
  const NonLunchesDayCalendarTile({
    Key? key,
    required this.message,
    this.backgroundColor,
  }) : super(key: key);

  final Widget message;
  final Color? backgroundColor;

  factory NonLunchesDayCalendarTile.holiday() {
    return NonLunchesDayCalendarTile(
      message: Text(
        'お休みです',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: AppColor.text.gray,
        ),
      ),
    );
  }

  factory NonLunchesDayCalendarTile.noData() {
    return NonLunchesDayCalendarTile(
      backgroundColor: AppColor.ui.black.withOpacity(0.1),
      message: Text(
        '準備中です',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: AppColor.text.gray,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: message,
      ),
    );
  }
}
