import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/state/help/help_state.dart';
import 'package:hakondate/view_model/single_page/help/help_view_model.dart';


class HelpFrame extends StatelessWidget {

  factory HelpFrame.baseNut() => HelpFrame(
    label: '基準値について',
    content: Column(
      children: <Widget>[
        const Text('　グラフなどの数値は，文部科学省が定めている「児童又は生徒一人当たりの学校給食摂取基準」に基づいて表示しています．以下の表は，登録されている情報に基づいた基準値を示しています．本サービス内の献立表時における「栄養」の%表示も以下の基準値を基に算出されています'),
        Consumer(
          builder: (_, ref, __) {
            final AsyncValue<HelpState> state = ref.watch(helpViewModelProvider);
            return state.when(
                loading: () => const CircularProgressIndicator(),
                error: (err, stack) => Text('Error: $err'),
                data: (state){
                  return Column(
                    children: [
                      Image.asset(state.schoolGrade.slnsImagePath),
                      const Text('上記の他に摂取量について配慮するものは以下のようになっています'),
                      Image.asset(state.schoolGrade.slnsZincImagePath),
                    ],
                  );
                },
            );
          },
        ),
      ],
    )
  );

  factory HelpFrame.formula() => HelpFrame(
    label: '各項目の計算方法',
    content: Column(
      children: [
        const Text('　グラフの各要素は以下のような計算式で算出しております．また，上限を120(%)としており，小数第二位以下で四捨五入をし算出しています．それにより多少表示している値と誤差が生じる場合があります，タンパク質・脂質・炭水化物は基準値に幅がありますが，本サービスでは最低値を基準としております．'),
        Image.asset('assets/slns/image/graphFormula.png'),
      ],
    ),
  );

  factory HelpFrame.input() => const HelpFrame(
    label: '入力値について',
    content: Text(
      '　このアプリに使用している入力値は，稀に誤りがある場合があります．正確な情報は函館市役所保険給食課や各学校の担当教員へお問い合わせください．以下は誤りの例です．'
      '例)正:コッペパン，誤:コッパパン'
    ),
  );

  factory HelpFrame.updateCycle() => const HelpFrame(
    label: '更新頻度',
    content: Text(
      '　このアプリに使用しているデータは，1日に1回1:00に更新されます．'
    ),
  );

  factory HelpFrame.tr() => const HelpFrame(
    label: 'Trについて',
    content: Text(
      '　Trとは，Traceの略です．微量を意味し，成分が含まれてはいるが，最小記載量に達してないことを示します．しかし，本アプリでは，鉄分を便宜上小数第2位まで記載しています．'
    ),
  );

  factory HelpFrame.nickName() => const HelpFrame(
    label: 'ニックネームの情報について',
    content: Text(
      '　ニックネームはサービス内でユーザを識別するために利用されます．ニックネームを入力しない場合，"登録なし"に設定されます．'
      '　登録情報は，端末に保存されます．'
    ),
  );

  factory HelpFrame.schoolAndSchoolYear() => const HelpFrame(
    label: '学校・学年の情報について',
    content: Text(
      '　学校の情報は，選択した学校の献立を表示するために利用します．'
      '　学年の情報は，本アプリで使用している不足栄養素を算出するために利用します．'
      '　登録情報は，端末に保存されます'
    ),
  );

  factory HelpFrame.dishDetail() => HelpFrame(
    label: '料理の詳細情報',
    content: Column(
      children:<Widget>[
        const Text('　献立がある日の料理名を選択すると，選択した料理の食材と栄養素を見ることができます．違う料理の詳細を知りたい時は，サイドメニューを使用します．'
        'サイドメニューは詳細画面のメニューアイコンか，画面を右から左ヘスワイプすることで開き，詳細情報を見たい料理をタップすることで詳細画面へ遷移します．'),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: <Widget>[
              Icon(
               Icons.dehaze,
                color: AppColor.brand.secondary,

              ),
              const Text('メニューアイコン'),
            ],
          ),
        )
      ],
    ),
  );

  factory HelpFrame.recommendedIngredients() => const HelpFrame(
      label: 'オススメ食材',
      content: Text(
        '　オススメ食材は，5大栄養素の内，最も不足している栄養素と次に不足している栄養素が多く含まれる食材を表示しています．'
        'また，給食が休みの日はエネルギーと脂質が多く含まれる食材を表示しています．'
      ),
  );

  factory HelpFrame.menuList() => const HelpFrame(
    label: '献立リスト',
    content: Column(
      children: <Widget>[
        Text('　別日の献立の詳細が知りたい場合は献立リストを使用します．献立画面右上にあるリストアイコンをタップすることで献立リスト画面に遷移できます．'),
        Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: <Widget>[

              Text('献立リストアイコン'),
            ],
          ),
        ),
        Text('　さらに別日の献立の詳細を知りたい場合は，「←」アイコンをタップし一度献立リストへ戻ってから別日を選択してください．'),
      ],
    ),
  );

  factory HelpFrame.menuTable() => HelpFrame(
    label: '献立表',
    content: Column(
      children: <Widget>[
        const Text('　カレンダーのように献立を知りたい場合は献立表を使用します．献立表は献立リスト画面で画面右上の献立表アイコンをタップすることで遷移できます．'),
        Row(
          children: <Widget>[
            Icon(
              Icons.calendar_today_outlined,
              color: AppColor.brand.secondary,
            ),
            const Text('献立表アイコン'),
          ],
        )
      ],
    ),
  );

  ///まだわからん
  factory HelpFrame.origin() => const HelpFrame(
    label: '原産地',
    content: Column(
      children: <Widget>[
        Row(
          children: <Widget>[

          ],
        )
      ],
    ),
  );

  ///ずかんが実装されてから
  factory HelpFrame.dictionaly() => const HelpFrame(
    label: 'ずかん',
    content: Column(
      children: <Widget>[
        Text('　一般的な食材の栄養素を知りたい場合ずかんを使用します．ずかんは献立画面下部のずかんアイコンより遷移できます．'),
        Row(
          children: <Widget>[

          ],
        )
      ],
    ),
  );

  //ユーザー情報実装後
  factory HelpFrame.registration() =>const HelpFrame(
    label: '登録情報について',
    content: Column(
      children: <Widget>[
        Text('　子供の学年に応じて，栄養基準が異なります．学年が変わるごとに，登録データをを手動で変更する必要があります．以下の手順で変更することができます．'
    '1．こんだて画面にある設定アイコンを押して設定画面に移動．'),
        Row(
          children: <Widget>[

          ],
        )
      ],
    ),
  );

  const HelpFrame({
    required this.label,
    required this.content,
    super.key,
  });

  final String label;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: MarginSize.minimum),
              width: 8,
              height: FontSize.subheading,
              color: AppColor.brand.secondary,
            ),
            Text(
              label,
              style: const TextStyle(
                fontSize: FontSize.subheading,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 10),
          child: content,
        ),
      ],
    );
  }
}
