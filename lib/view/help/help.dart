import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view/help/help_content_column.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.ui.white,
      appBar: const FadeUpAppBar(
        title: Text('ヘルプ'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PaddingSize.normal),
          child: HelpContentColumn(),
        ),
      ),
    );
  }
}
