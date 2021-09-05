import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/unit/design_unit.dart';
import 'package:hakondate_v2/view_model/is_agreed_view_model.dart';

class Terms extends ConsumerWidget {
  void _handle() {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool _isAgreed = ref.watch(isAgreedProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('利用規約'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: MarginSize.normalVertical,
          horizontal: MarginSize.normalHorizontal
        ),
        child: Column(
          children: [
            _guideText(),
            SizedBox(height: SpaceSize.paragraph),
            _termsCard(),
            SizedBox(height: SpaceSize.paragraph),
            Container(
              margin: EdgeInsets.all(MarginSize.minimum),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    activeColor: Theme.of(context).accentColor,
                    value: _isAgreed,
                    onChanged: (_) => ref.read(isAgreedProvider.notifier).tapped()
                  ),
                  Text(
                    '利用規約に同意する',
                    style: TextStyle(fontSize: FontSize.body)
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).accentColor,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: 'MPLUSRounded1c'
                      ),
                      shape: StadiumBorder()
                    ),
                    onPressed: _isAgreed ? _handle : null,
                    child: Text('お子様の登録')
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _guideText() {
    return Text(
        '　以下の利用規約に同意の上，はこんだてをご利用ください．',
        style: TextStyle(fontSize: FontSize.body)
    );
  }

  Widget _termsCard() {
    return Expanded(
      child: Card(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(normalPaddingSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _paragraphText(
                  title: 'はじめに',
                  sentence:
                      '　「はこんだて」（以下「本アプリ」）利用の際には，以下の利用規約（以下「本規約」）に同意していただく必要があります．'
                      '本規約に同意いただけない場合，本アプリを利用する事ができません．本アプリの利用を開始された場合は，本規約に同意したものとみなします．'),
              _paragraphText(
                  title: '第一条 本アプリの概要',
                  sentence:
                      '　本アプリは，函館市の小中学校に通うお子様のいる保護者様向けに，函館市の学校給食をより身近なものにすること目的に制作されたアプリです．'
                      'また，食材の図鑑機能や給食の人気レシピ機能により，上記には該当しない様々な方にも利用していただくことができます．\n'
                      '　本アプリは，公立はこだて未来大学の有志の学生（以下「提供者」）によって提供されています．'),
              _paragraphText(
                  title: '第二条 利用環境',
                  sentence:
                      '　本アプリを利用するために必要な一切のハードウェア及び，ソフトウェア等の準備・整備は，全て利用者の負担と責任において行うものとします．'
                      'また，本アプリ利用における基本利用料はかかりませんが，データ通信等に係る諸費用は，全て利用者の負担となります．'),
              _paragraphText(
                  title: '第三条 利用上の注意',
                  sentence: '　本アプリで提供する情報は，完全性を保証するものではありません．'
                      'また，予告なく提供する情報の変更や削除が行われる可能性があります．'
                      '特にアレルギーや食中毒など命に関わる可能性のある情報については，利用者自身で安全性・信頼性を判断した上でご利用ください．\n'
                      '　また，本アプリの利用に基づくいかなる損害に対しても，提供者は一切の責任を負わないものとします．'),
              _paragraphText(
                  title: '第四条 禁止事項',
                  sentence:
                      '　オープンデータを除く本アプリで使用されている情報・画像・ソフトウェア等を私的利用の範囲を超えて転載・複製・改変することを禁じます．'
                      'また，本アプリの複製・改変・編集及び，リバースエンジニアリング・逆コンパイル・逆アセンブル等を許可なく行うことを禁じます．'),
              _paragraphText(
                  title: '第五条 利用者責任',
                  sentence:
                      '　本アプリの利用により第三者に損害を与えた場合やトラブルが発生した場合は，利用者自身の責任と負担においてその損害を賠償または，解決するものとし，提供者は一切の責任を負わないものとします．'
                      'また，利用者が本規約に違反した結果提供者または第三者に損害を与えた場合やトラブルが発生した場合も同様に，利用者自身の責任と負担においてその損害を賠償または，解決するものとし提供者は一切の責任を負わないものとします．'),
              _paragraphText(
                  title: '第六条 他のサービスへのリンク',
                  sentence:
                      '　本アプリを通じてアクセスできる第三者のサービスについては，そのサービス提供者が独自に利用規約及びプライバシーポリシーを定めています．'
                      'これら第三者のサービスが行う個人情報の取り扱いに対しては，提供者はいかなる義務及び責任を負わないものとします．'),
              _paragraphText(
                  title: '第七条 サービス提供の中止・一部中断・変更等',
                  sentence:
                      '　本アプリは予告なく，サービスの提供を中止または，一時的に中断する可能性があります．'
                      '同様に本アプリは予告なく，提供サービスの内容・表示・操作方法等を変更する事があります．'
                      'これにより，利用者または第三者が被った損害に対し提供者はいかなる責任も負わないものとし，損害賠償の義務もないものとします．'
                      'また，提供者は本アプリのアップデート・サポート等を行う義務・責任を負わないものとします．'
                      'ただし，提供者の判断に基づき，必要に応じて本アプリのアップデート・サポート等を行う場合があります．'),
              _paragraphText(
                  title: '第八条 利用規約の変更',
                  sentence:
                      '　提供者は，本規約を任意に変更する事ができるものとし，変更後の利用規約は本アプリ上に掲示された時点で効力を生じるものとします．'
                      '利用者が，変更後の本規約に同意できない場合，直ちに本アプリを当該端末機から削除してください．'
                      '変更後の利用規約が効力を生じた時点以降に利用者が本アプリを使用した時は，変更後の条項に同意したものとみなします．'),
              _paragraphText(
                  title: '第九条 知的財産権',
                  sentence:
                      '　本アプリに関する編集著作権を含む一切の知的財産権及び権利は，提供者及び提供者に対して使用許諾を行っている情報提供者に帰属します．'),
              _paragraphText(
                  title: '第十条 専属的合意管轄その他雑則',
                  sentence:
                      '　本アプリ又は，本アプリに関連して生じた紛争については，北海道を管轄する裁判所を専属的合意管轄裁判所とします．'
                      'また，本規約は日本国の法令に準拠するものとします．')
            ],
          ),
        ),
      ),
    );
  }

  Widget _paragraphText(
      {required String title, required String sentence}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: FontSize.subheading)),
        SizedBox(height: SpaceSize.line),
        Text(sentence, style: TextStyle(fontSize: FontSize.body)),
        SizedBox(height: SpaceSize.paragraph)
      ],
    );
  }
}
