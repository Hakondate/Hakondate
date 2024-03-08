import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view/component/label/description_text.dart';
import 'package:hakondate/view/origin/dropdown_month_selector.dart';
import 'package:hakondate/view/origin/origin_item_list.dart';

class Origin extends StatelessWidget {
  const Origin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.ui.white,
      appBar: const FadeUpAppBar(
        title: Text('産地情報'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PaddingSize.normal),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DescriptionText.headline(label: '基本的な産地'),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    DescriptionText.body(
                      label: '1. 米，小麦，牛乳，鶏卵\n'
                          '2. 肉（牛，豚，鶏）\n'
                          '3. 野菜，果物，魚介・海藻類',
                    ),
                    Flexible(
                      child: DescriptionText.body(
                        label: '北海道産\n'
                            '北海道産\n'
                            '以下の産地リストをご覧ください',
                      ),
                    ),
                  ],
                ),
                DescriptionText.headline(label: '月毎の産地情報'),
                const DropdownMonthSelector(),
                const OriginItemList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
