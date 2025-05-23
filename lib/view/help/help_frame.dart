import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/state/help/help_state.dart';
import 'package:hakondate/view/component/label/description_text.dart';
import 'package:hakondate/view_model/single_page/help/help_view_model.dart';

class HelpFrame extends StatelessWidget {
  const HelpFrame({
    required this.label,
    required this.content,
    super.key,
  });

  factory HelpFrame.baseNut() => HelpFrame(
        label: '基準値について',
        content: Column(
          children: <Widget>[
            DescriptionText.body(
              label: '　本サービス内で用いられている栄養基準値は，文部科学省が定める「学校給食実施基準（2021年）」及び厚生労働省が定める「日本人の食事摂取基準（2020年）」に基づき定められています．'
                  '以下の表は，登録されている情報に基づいた基準値を示しています．',
            ),
            Consumer(
              builder: (_, WidgetRef ref, __) {
                final AsyncValue<HelpState> state = ref.watch(helpViewModelProvider);
                return state.when(
                  loading: () => const CircularProgressIndicator(),
                  error: (Object err, StackTrace stack) => Text('Error: $err'),
                  data: (HelpState state) {
                    return Column(
                      children: <Widget>[
                        Image.asset(state.schoolGrade.slnsImagePath),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              DescriptionText.linked(
                                label: '学校給食実施基準（2021年）',
                                url: 'https://www.mext.go.jp/content/20210212-mxt_kenshoku-100003357_2.pdf',
                                isAnnotation: true,
                              ),
                              DescriptionText.linked(
                                label: '日本人の食事摂取基準（2020年）',
                                url: 'https://www.mhlw.go.jp/stf/newpage_08517.html',
                                isAnnotation: true,
                              ),
                            ],
                          ),
                        ),
                        DescriptionText.body(
                          label: '上記の他に摂取量について配慮するものは以下のようになっています．',
                        ),
                        Image.asset(state.schoolGrade.slnsZincImagePath),
                        const SizedBox(height: SpaceSize.paragraph),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      );

  factory HelpFrame.formula() => HelpFrame(
        label: '各基準値の計算方法',
        content: Column(
          children: <Widget>[
            DescriptionText.body(
              label: '　グラフの各要素は以下のような計算式で算出しております．また，上限を120(%)としており，小数第二位以下で四捨五入をし算出しています．'
                  'それにより多少表示している値と誤差が生じる場合があります．一部の栄養素の基準値は幅がありますが，本サービスでは中央値を基準として採用しております．',
            ),
            Image.asset('assets/slns/image/graphFormula.png'),
            const SizedBox(height: SpaceSize.paragraph),
          ],
        ),
      );

  factory HelpFrame.input() => HelpFrame(
        label: '登録情報について',
        content: DescriptionText.body(
          label: '　ご登録された学年に応じて，栄養基準値が異なります．学年が変わるごとに，登録データを手動で変更する必要があります．',
        ),
      );

  factory HelpFrame.misprint() => HelpFrame(
        label: '誤表記について',
        content: DescriptionText.body(
          label: '　このアプリに使用している入力値は，稀に誤りがあります．正確な情報は函館市役所保険給食課や各学校の担当教員へお問い合わせください．以下は誤りの例です．\n'
              '例)正:コッペパン，誤:コッパパン',
        ),
      );

  factory HelpFrame.updateCycle() => HelpFrame(
        label: '更新頻度',
        content: DescriptionText.body(
          label: '　このアプリに使用しているデータは，1日に1回1:00に更新される予定です．',
        ),
      );

  factory HelpFrame.tr() => HelpFrame(
        label: 'Trについて',
        content: DescriptionText.body(
          label: '　Trとは，Traceの略です．微量を意味し，成分が含まれてはいるが，最小記載量に達してないことを示します．しかし，本アプリでは，鉄分を便宜上小数第2位まで記載しています．',
        ),
      );

  factory HelpFrame.nickName() => HelpFrame(
        label: 'お名前について',
        content: DescriptionText.body(
          label: '　お名前情報は本アプリ内でお子様を識別するために利用されます．\n'
              'ニックネームなどを入力していただいても構いません．また，あとで変更することもできます．\n'
              '　登録情報は端末に保存され，収集されることはありません．また，あとから変更することができます．',
        ),
      );

  factory HelpFrame.schoolAndSchoolYear() => HelpFrame(
        label: '学校・学年の情報について',
        content: DescriptionText.body(
          label: '　学校の情報は，選択した学校の献立を表示するために利用します．選択肢にない学校は，本アプリ未対応の学校です．\n'
              '　学年の情報は，本アプリ内でお子様の年齢に合わせた情報(栄養基準値など)を表示するために利用されます．\n'
              '　どちらの情報も，端末内に保存され収集されることはありません．また，あとから変更することができます．',
        ),
      );

  factory HelpFrame.dishDetail() => HelpFrame(
        label: '料理の詳細情報',
        content: DescriptionText.body(
          label: '　献立がある日の料理名を選択すると，選択した料理の食材と栄養素を見ることができます．',
        ),
      );

  factory HelpFrame.recommendedIngredients() => HelpFrame(
        label: 'おすすめ食材',
        content: DescriptionText.body(
          label: '　おすすめ食材は，5大栄養素の内，最も不足している栄養素と次に不足している栄養素が多く含まれる食材を表示しています．また，給食が休みの日は表示されません．',
        ),
      );

  factory HelpFrame.menuList() => HelpFrame(
        label: '献立リスト',
        content: Column(
          children: <Widget>[
            DescriptionText.body(
              label: '　別日の献立が知りたい場合は献立リストを使用します．献立画面右上にあるカレンダーアイコンをタップすることで献立リスト画面に遷移できます．',
              isZeroBottomPadding: true,
            ),
            _iconWithText('献立リストアイコン', Icons.calendar_today_outlined),
            DescriptionText.body(
              label: '　画面を上下にスクロールし，該当日をタップすることで別日の献立を閲覧することができます．\n'
                  '　また，ホーム画面上部の日付バーから日付を選択することでも，別日の献立を閲覧することができます．',
            ),
          ],
        ),
      );

  factory HelpFrame.origin() => HelpFrame(
        label: '産地情報',
        content: Column(
          children: <Widget>[
            DescriptionText.body(
              label: '　給食で利用されている食材の原産地を知りたい場合は，ドロワーから産地情報を閲覧する画面に遷移することができます．'
                  'ドロワーは，こんだて画面で左上にあるドロワーアイコンをタップ又は，左端から右へ画面をスワイプすることで表示させることができます．',
              isZeroBottomPadding: true,
            ),
            _iconWithText('ドロワーアイコン', Icons.dehaze),
            const SizedBox(height: SpaceSize.paragraph),
          ],
        ),
      );

  final String label;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DescriptionText.subheading(label: label),
        content,
      ],
    );
  }

  static Widget _iconWithText(String label, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: AppColor.brand.secondary,
          ),
          Text(' $label'),
        ],
      ),
    );
  }
}
