import 'package:flutter/material.dart';

class DailyDrawer extends StatelessWidget {
  const DailyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/icon.png'),
              ),
            ),
            child: Text(
              'はこんだて',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
          _bodyWidget(),
        ],
      ),
    );
  }

  Widget _bodyWidget() {
    return Column(
      children: data.map((data) =>
        Container(
          padding: const EdgeInsets.all(8.0),
          // margin: const EdgeInsets.only(top:5.0),
          color: Colors.white70,
          child: Row(
            children: <Widget>[
              Icon(data.icon),
              Text(data.text),
            ],
          ),
        ),
      ).toList(),
    );
  }
}

List<DrawerData> data = [
  DrawerData(Icons.account_circle, 'ユーザー情報'),
  DrawerData(Icons.agriculture, '産地情報'),
  DrawerData(Icons.gavel, '利用規約'),
  DrawerData(Icons.info, 'インフォメーション'),
  DrawerData(Icons.help, 'ヘルプ'),
  DrawerData(Icons.lock, 'ライセンス情報'),
];

class DrawerData {
  IconData icon;
  String text;
  DrawerData(this.icon, this.text);
}
