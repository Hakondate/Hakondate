import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/router/routes.dart';

class UnauthorizedDayBody extends StatelessWidget {
  const UnauthorizedDayBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/status/menu_status/holiday.png',
            width: screenWidth / 2,
          ),
          const SizedBox(height: MarginSize.normal),
          Text(
            '招待コードの期限が切れています\n新しいコードを入力してください',
            style: TextStyle(
              fontSize: FontSize.status,
              fontWeight: FontWeight.bold,
              color: AppColor.text.primary,
            ),
          ),
          const SizedBox(height: MarginSize.kTabBarHeight),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.brand.secondary,
              padding: const EdgeInsets.symmetric(
                vertical: PaddingSize.buttonVertical,
                horizontal: PaddingSize.buttonHorizontal,
              ),
              textStyle: TextStyle(color: AppColor.text.white),
              shape: const StadiumBorder(),
            ),
            child: const Text(
              '入力する',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () async {
              routemaster.replace('/home/authorization');
            },
          ),
        ],
      ),
    );
  }
}
