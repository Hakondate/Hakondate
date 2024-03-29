import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view/component/label/description_text.dart';
import 'package:hakondate/view_model/single_page/information/information_view_model.dart';

class Information extends ConsumerWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColor.ui.white,
      appBar: const FadeUpAppBar(
        title: Text('インフォメーション'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingSize.normal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DescriptionText.headline(label: '利用データについて'),
              DescriptionText.body(
                label: '　本サービスは，函館市等で公開されたオープンデータと，協力していただいている函館市の小中学校より提供されたデータを基に制作しています．\n'
                    '　本サービスで扱っている給食の献立や材料は予告なく変更されることがあります．また，本サービス内の情報によって起きたトラブル・事故等において，本サービスの開発者及び関係団体は一切責任を負いません．正確な情報が必要な際には，函館市役所保険給食課及び各学校の担当職員へお問い合わせください．',
              ),
              DescriptionText.subheading(label: 'オープンデータ'),
              Image.asset('assets/images/information/open_data.png'),
              Align(
                alignment: Alignment.topRight,
                child: DescriptionText.linked(
                  label: '総務省 地方公共団体のオープンデータの推進',
                  url: 'https://www.soumu.go.jp/menu_seisaku/ictseisaku/ictriyou/opendata/',
                  isAnnotation: true,
                ),
              ),
              const SizedBox(height: SpaceSize.paragraph),
              DescriptionText.subheading(label: '利用中のデータ(敬称略)'),
              DescriptionText.linked(
                label: '厚生労働省 日本人の食事摂取基準',
                url: 'https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/kenkou_iryou/kenkou/eiyou/syokuji_kijyun.html',
              ),
              DescriptionText.linked(
                label: '文部科学省 学校給食実施基準',
                url: 'https://www.mext.go.jp/a_menu/sports/syokuiku/1407704.htm',
              ),
              DescriptionText.linked(
                label: '文部科学省 日本食品標準成分表',
                url: 'https://www.mext.go.jp/a_menu/syokuhinseibun/1365420.htm',
              ),
              DescriptionText.linked(
                label: '函館市の学校給食 給食ひろば',
                url: 'https://www.city.hakodate.hokkaido.jp/docs/2016012500108/',
              ),
              DescriptionText.linked(
                label: '函館市の学校給食 食材の産地',
                url: 'https://www.city.hakodate.hokkaido.jp/docs/2014031600120/',
              ),
              const SizedBox(height: SpaceSize.paragraph),
              DescriptionText.subheading(label: '協力していただいている学校(敬称略)'),
              FutureBuilder<String>(
                future: ref.read(informationViewModelProvider).getSchoolNameListText(),
                builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (snapshot.hasData) {
                    return DescriptionText.body(
                      label: snapshot.data!,
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
              DescriptionText.headline(label: '個人情報の扱い'),
              DescriptionText.body(
                label: '　本サービスは個人のプライバシー，名誉，その他第三者の権利を侵害することのないよう，利用者に関する情報の取り扱いに充分配慮いたします．'
                    'また，登録されたお子様のニックネーム，学校，学年等の情報は本サービス内及び協力していただいている学校内でのみ利用されます．',
              ),
              DescriptionText.headline(label: 'お問い合わせ'),
              DescriptionText.subheading(label: '開発者'),
              DescriptionText.body(
                label: '公立はこだて未来大学　はこんだて開発チーム',
                isZeroBottomPadding: true,
              ),
              DescriptionText(
                text: Padding(
                  padding: const EdgeInsets.only(
                    left: PaddingSize.minimum,
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: AppColor.text.link,
                        fontFamily: 'MPLUSRounded1c',
                        fontSize: FontSize.body,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () => ref.read(informationViewModelProvider).onTap(),
                      text: 'editorhakondate@gmail.com',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
