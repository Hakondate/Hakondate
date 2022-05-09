import 'package:flutter/material.dart';
import 'package:hakondate/router/routes.dart';

class DailyDrawer extends StatelessWidget {
  const DailyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
               Container(
                 decoration: const BoxDecoration(
                   color: Colors.black,
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage('assets/images/icon.png'),
                   ),
                 ),
                width: double.infinity,
                height: 200,
                alignment: Alignment(-0.8, -0.8),
                child: const Text(
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
        ),
    );
  }

  Widget _bodyWidget() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _drawerLabel(
            icon: Icons.account_circle,
            labelText: 'ユーザー情報',
            onTap: () => routemaster.push('/home/setting'),
          ),
          _drawerLabel(
            icon: Icons.agriculture,
            labelText: '産地情報',
            onTap: () => routemaster.push('/home/origin'),
          ),
          _drawerLabel(
            icon: Icons.gavel,
            labelText: '利用規約',
            onTap: () => routemaster.push('/home/terms'),
          ),
          _drawerLabel(
            icon: Icons.info,
            labelText: 'インフォメーション',
            onTap: () => routemaster.push('/home/about_us'),
          ),
          _drawerLabel(
            icon: Icons.help,
            labelText: 'ヘルプ',
            onTap: () => routemaster.push('/home/help'),
          ),
          _drawerLabel(
            icon: Icons.lock,
            labelText: 'ライセンス情報',
            onTap: () => routemaster.push('/license'),
          ),
        ],
      ),
    );
  }

  Widget _drawerLabel({
    required IconData icon,
    required String labelText,
    Function()? onTap,
  }) {
    return GestureDetector(
        child: Container(
          padding: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
          child: Row(
            children: <Widget>[
              Icon(icon, size: 25,),
              const SizedBox(width: 20),
              Text(labelText, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
        onTap: onTap,
    );
  }
}
