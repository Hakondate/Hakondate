import 'package:flutter/material.dart';

import 'package:hakondate/view/component/sentence/sentence.dart';

class HelpContentColumn extends StatelessWidget {
  const HelpContentColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(text:'栄養素の分類'),
        headline(text: '基準値について'),
        sentence(text: '　グラフなどの数値は，文部科学省が定めている「児童又は生徒一人当たりの学校給食摂取基準」に基づいて表示しています．以下の表は、登録されている情報に基づいた基準値を示しています．本サービス内の献立表時における「栄養」の％表示も以下の基準値をもとに算出されています．'),
      ],
    );
  }
}
