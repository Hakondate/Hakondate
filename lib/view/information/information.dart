import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view/information/information_content_column.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.ui.white,
      appBar: const FadeUpAppBar(
        title: Text('インフォメーション'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PaddingSize.normal),
          child: InformationContentColumn(),
        ),
      ),
    );
  }
}
