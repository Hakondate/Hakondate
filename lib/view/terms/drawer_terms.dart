import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view/terms/terms_content_column.dart';

class DrawerTerms extends StatelessWidget {
  const DrawerTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.ui.white,
      appBar: const FadeUpAppBar(
        title: Text('利用規約'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PaddingSize.normal),
          child: TermsContentColumn(),
        ),
      ),
    );
  }
}
