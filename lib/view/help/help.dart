import 'package:flutter/material.dart';
import 'package:hakondate/view/help/help_frame.dart';
import '../component/frame/fade_up_app_bar.dart';

class Help extends StatelessWidget{
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
            children: [
              const SizedBox(
                height: 20,
              ),
              _title('栄養値の分類'),
              HelpFrame.baseNut(),
              HelpFrame.formula(),

              _title('データ'),
              HelpFrame.input(),
              HelpFrame.updateCycle(),
              HelpFrame.tr(),

              _title('操作ヘルプ'),
              HelpFrame.nickName(),
              HelpFrame.schoolAndSchoolYear(),
              HelpFrame.dishDetail(),
              HelpFrame.menuList(),
              HelpFrame.menuTable(),
              HelpFrame.origin(),
              HelpFrame.dictionaly(),
              HelpFrame.registration(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _title(String label){
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: <Widget>[
          Text(
            label,
            style: const TextStyle(
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
