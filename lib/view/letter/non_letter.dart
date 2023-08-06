import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view_model/single_page/letter/letter_view_model.dart';

class NonLetter extends StatelessWidget {
  const NonLetter({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/status/non_letter.png',
            width: screenWidth / 2,
          ),
          const SizedBox(height: MarginSize.normal),
          Text(
            'お便りが見つかりません...',
            style: TextStyle(
              fontSize: FontSize.status,
              fontWeight: FontWeight.bold,
              color: AppColor.text.primary,
            ),
          ),
          const SizedBox(height: MarginSize.minimum),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, _) {
              return GestureDetector(
                onTap: () => ref.read(letterViewModelProvider.notifier).reloadLetters(),
                child: Text(
                  '更新する',
                  style: TextStyle(
                    fontSize: FontSize.body,
                    color: AppColor.text.blue,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: MarginSize.kTabBarHeight),
        ],
      ),
    );
  }
}
