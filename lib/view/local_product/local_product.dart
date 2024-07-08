import 'package:flutter/material.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';

class LocalProduct extends StatelessWidget {
  const LocalProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FadeUpAppBar(
        title: Text('地場産物情報'),
      ),
    );
  }
}
