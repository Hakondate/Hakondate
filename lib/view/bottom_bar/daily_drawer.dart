import 'package:flutter/material.dart';

class DailyDrawer extends StatelessWidget {
  const DailyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
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
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('ユーザー情報'),
            // onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.agriculture),
            title: Text('産地情報'),
            // onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('インフォメーション'),
            // onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('ヘルプ'),
            // onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('ライセンス情報'),
            // onTap: () => {},
          ),
        ],
      ),
    );
  }
}
