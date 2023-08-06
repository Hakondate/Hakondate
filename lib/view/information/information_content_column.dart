import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view/component/sentence/linked_annotation.dart';
import 'package:hakondate/view/component/sentence/linked_sentence.dart';
import 'package:hakondate/view/component/sentence/padded_sentence.dart';
import 'package:hakondate/view/component/sentence/square_and_headline.dart';
import 'package:hakondate/view/component/sentence/underlined_sentence.dart';

class InformationContentColumn extends StatelessWidget {
  const InformationContentColumn({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: always_specify_types
      children: [
        const UnderlinedTitle(text:'利用データについて'),
        const PaddedSentence(
          text:'　本サービスは，函館市等で公開されたオープンデータと，協力していただいている函館市の小中学校より提供されたデータを基に制作しています．\n'
               '　本サービスで扱っている給食の献立や材料は予告なく変更されることがあります．また，本サービス内の情報によって起きたトラブル・事故等において，本サービスの開発者及び関係団体は一切責任を負いません．正確な情報が必要な際には，函館市役所保険給食課及び各学校の担当職員へお問い合わせください．',
               ),
        const SquareAndHeading(text:'オープンデータ'),
        Image.asset('assets/images/information/open_data.png'),//webviewのバーが表示されない
        const LinkedAnnotation(
          text: '総務省 地方公共団体のオープンデータの推進',
          url: 'https://www.soumu.go.jp/menu_seisaku/ictseisaku/ictriyou/opendata/',
        ),
        const SquareAndHeading(text: '利用中のデータ(敬称略)'),
        const LinkedSentence(
          text: '厚生労働省 日本人の食事摂取基準', 
          url: 'https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/kenkou_iryou/kenkou/eiyou/syokuji_kijyun.html',
        ),
        const LinkedSentence(
          text: '文部科学省 学校給食実施基準', 
          url: 'https://www.mext.go.jp/a_menu/sports/syokuiku/__icsFiles/afieldfile/2019/06/06/1407704_001.pdf',//開けない
        ),
        const LinkedSentence(
          text: '文部科学省 日本食品標準成分表', 
          url: 'https://www.mext.go.jp/a_menu/syokuhinseibun/1365420.htm',
        ),
        const LinkedSentence(
          text: '函館市の学校給食 給食ひろば', 
          url: 'https://www.city.hakodate.hokkaido.jp/docs/2016012500108/',
        ),
        const LinkedSentence(
          text: '函館市の学校給食 食材の産地', 
          url: 'https://www.city.hakodate.hokkaido.jp/docs/2014031600120/',
        ),
        const LinkedSentence(
          text: 'イラストトレイン', 
          url: 'https://illustrain.com/',
        ),
        const LinkedSentence(
          text: 'ICOOON MONO', 
          url: 'https://icooon-mono.com/',
        ),
        const LinkedSentence(
          text: 'いらすとや', 
          url: 'https://www.irasutoya.com/',
        ),
        const SizedBox(height: SpaceSize.paragraph),
        const SquareAndHeading(text: '協力していただいている学校(敬称略)'),
        const PaddedSentence(
          text: '巴中学校\n'
                '青柳中学校\n'
                '五稜郭中学校',
        ),
        const UnderlinedTitle(text: '個人情報の扱い'),
        const PaddedSentence(text: '　本サービスは個人のプライバシー，名誉，その他第三者の権利を侵害することのないよう，利用者に関する情報の取り扱いに充分配慮いたします．また，登録されたユーザのニックネーム，学校，学年等の情報は本サービス内及び協力していただいている学校内でのみ利用されます．'),
        const UnderlinedTitle(text: 'お問い合わせ'),
        const SquareAndHeading(text: '開発者'),
        const PaddedSentence(
          text: '公立はこだて未来大学　はこんだて開発チーム\n'
                'editorhakondate@gmail.com',
        ),

      ],
    );
  }
}
