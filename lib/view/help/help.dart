import 'package:flutter/material.dart';

import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view/component/label/descpription_text.dart';
import 'package:hakondate/view/help/help_frame.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FadeUpAppBar(
        title: Text('ヘルプ'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),

              DescriptionText.headline(label: '栄養素の分類'),
              HelpFrame.baseNut(),
              HelpFrame.formula(),
              HelpFrame.input(),

              DescriptionText.headline(label: 'データ'),
              HelpFrame.misprint(),
              HelpFrame.updateCycle(),
              HelpFrame.tr(),

              DescriptionText.headline(label: '操作ヘルプ'),
              HelpFrame.nickName(),
              HelpFrame.schoolAndSchoolYear(),
              HelpFrame.dishDetail(),
              HelpFrame.recommendedIngredients(),
              HelpFrame.menuList(),
              HelpFrame.origin(),

              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
