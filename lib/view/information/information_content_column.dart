import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';

class InformationContentColumn extends StatelessWidget {
  const InformationContentColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _paragraphText(
            title: '利用データについて',
            sentence:
            '　本サービスは，函館市等で公開されたオープンデータと，協力していただいている函館市の小中学校より提供されたデータを基に制作しています．\n'
            '　本サービスで扱っている給食の献立や材料は予告なく変更されることがあります．また，本サービス内の情報によって起きたトラブル・事故等において，本サービスの開発者及び関係団体は一切責任を負いません．正確な情報が必要な際には，函館市役所保険給食課及び各学校の担当職員へお問い合わせください．'),
        _paragraphText(
            title: 'オープンデータ',
            sentence:''),
            Image.asset('assets/images/information/open_data.png'),
        _paragraphText(
            title: '利用中のデータ(敬称略)',
            sentence:
            '　'),
        _paragraphText(
            title: '協力していただいている学校(敬称略)',
            sentence: '　巴中学校\n'
                '　青柳中学校\n'
                '　五稜郭中学校'),
        _paragraphText(
            title: '個人情報の扱い',
            sentence:
            '　本サービスは個人のプライバシー，名誉，その他第三者の権利を侵害することのないよう，利用者に関する情報の取り扱いに充分配慮いたします．また，登録されたユーザのニックネーム，学校，学年等の情報は本サービス内及び協力していただいている学校内でのみ利用されます．'),
        _paragraphText(
            title: 'お問い合わせ',
            sentence:
            '開発者\n'
            '　公立はこだて未来大学　はこんだて開発チーム\n'
            '　editorhakondate@gmail.com'),
      ],
    );
  }

  Widget _paragraphText({required String title, required String sentence}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: FontSize.subheading)),
        const SizedBox(height: SpaceSize.line),
        Text(sentence, style: const TextStyle(fontSize: FontSize.body)),
        const SizedBox(height: SpaceSize.paragraph),
      ],
    );
  }
}
