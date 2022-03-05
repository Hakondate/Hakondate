import 'package:flutter/material.dart';

import 'package:hakondate_v2/view/component/loading_animation_widget.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffFFBF7F),
        child: const LoadingAnimationWidget(),
      ),
    );
  }
}
