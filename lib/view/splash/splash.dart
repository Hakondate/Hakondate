import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/view/component/other/loading_animation_widget.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.brand.secondaryLight,
        child: const LoadingAnimationWidget(),
      ),
    );
  }
}
