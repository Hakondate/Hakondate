import 'package:flutter/material.dart';

<<<<<<< HEAD
import 'package:hakondate/view/component/sentence/sentence.dart';
import 'package:hakondate/constant/size.dart';

class InformationContentColumn extends StatelessWidget {
  const InformationContentColumn({super.key});
=======
import 'package:hakondate/constant/size.dart';

class InformationContentColumn extends StatelessWidget {
  const InformationContentColumn({Key? key}) : super(key: key);
>>>>>>> 8df80982629a411b290ad012b4607f33e591cfb7

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
<<<<<<< HEAD
      // ignore: always_specify_types
      children: [
        title(text:'利用データについて'),
        sentence(
          text:'　本サービスは，函館市等で公開されたオープンデータと，協力していただいている函館市の小中学校より提供されたデータを基に制作しています．\n'
               '　本サービスで扱っている給食の献立や材料は予告なく変更されることがあります．また，本サービス内の情報によって起きたトラブル・事故等において，本サービスの開発者及び関係団体は一切責任を負いません．正確な情報が必要な際には，函館市役所保険給食課及び各学校の担当職員へお問い合わせください．',
               ),
        headline(text:'オープンデータ'),
        Image.asset('assets/images/information/open_data.png'),//webviewのバーが表示されない
        annotation(
          text: '総務省 地方公共団体のオープンデータの推進',
          url: 'https://www.soumu.go.jp/menu_seisaku/ictseisaku/ictriyou/opendata/',
        ),
        headline(text: '利用中のデータ(敬称略)'),
        linkSentence(
          text: '厚生労働省 日本人の食事摂取基準', 
          url: 'https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/kenkou_iryou/kenkou/eiyou/syokuji_kijyun.html',
        ),
        linkSentence(
          text: '文部科学省 学校給食実施基準', 
          url: 'https://www.mext.go.jp/a_menu/sports/syokuiku/__icsFiles/afieldfile/2019/06/06/1407704_001.pdf',//開けない
        ),
        linkSentence(
          text: '文部科学省 日本食品標準成分表', 
          url: 'https://www.mext.go.jp/a_menu/syokuhinseibun/1365420.htm',
        ),
        linkSentence(
          text: '函館市の学校給食 給食ひろば', 
          url: 'https://www.city.hakodate.hokkaido.jp/docs/2016012500108/',
        ),
        linkSentence(
          text: '函館市の学校給食 食材の産地', 
          url: 'https://www.city.hakodate.hokkaido.jp/docs/2014031600120/',
        ),
        linkSentence(
          text: 'イラストトレイン', 
          url: 'https://illustrain.com/',
        ),
        linkSentence(
          text: 'ICOOON MONO', 
          url: 'https://icooon-mono.com/',
        ),
        linkSentence(
          text: 'いらすとや', 
          url: 'https://www.irasutoya.com/',
        ),
        const SizedBox(height: SpaceSize.paragraph),
        headline(text: '協力していただいている学校(敬称略)'),
        sentence(
          text: '巴中学校\n'
                '青柳中学校\n'
                '五稜郭中学校',
        ),
        title(text: '個人情報の扱い'),
        sentence(text: '　本サービスは個人のプライバシー，名誉，その他第三者の権利を侵害することのないよう，利用者に関する情報の取り扱いに充分配慮いたします．また，登録されたユーザのニックネーム，学校，学年等の情報は本サービス内及び協力していただいている学校内でのみ利用されます．'),
        title(text: 'お問い合わせ'),
        headline(text: '開発者'),
        sentence(
          text: '公立はこだて未来大学　はこんだて開発チーム\n'
                'editorhakondate@gmail.com',
        ),
=======
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
>>>>>>> 8df80982629a411b290ad012b4607f33e591cfb7
      ],
    );
  }

<<<<<<< HEAD
  
=======
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
>>>>>>> 8df80982629a411b290ad012b4607f33e591cfb7
}
