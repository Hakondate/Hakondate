import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher_string.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/router/routes.dart';

class DailyDrawer extends StatelessWidget {
  const DailyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/drawer/header.png',
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            _pageListWidget(),
          ],
        ),
      ),
    );
  }

  Widget _pageListWidget() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(height: SpaceSize.paragraph),
          _drawerLabel(
            icon: Icons.account_circle_outlined,
            labelText: 'お子様情報',
            onTap: () => routemaster.push('/home/user_settings'),
          ),
          _drawerLabel(
            icon: Icons.agriculture_outlined,
            labelText: '産地情報',
            onTap: () => routemaster.push('/home/origin'),
          ),
          Divider(
            color: AppColor.text.gray,
            height: SpaceSize.paragraph,
            thickness: 0.1,
            indent: PaddingSize.buttonHorizontalLarge,
            endIndent: PaddingSize.buttonHorizontalLarge,
          ),
          _drawerLabel(
            icon: Icons.description_outlined,
            labelText: '利用規約',
            onTap: () => routemaster.push('/home/drawer_terms'),
          ),
          _drawerLabel(
            icon: Icons.info_outlined,
            labelText: 'インフォメーション',
            onTap: () => routemaster.push('/home/information'),
          ),
          _drawerLabel(
            icon: Icons.help_outlined,
            labelText: 'ヘルプ',
            onTap: () => routemaster.push('/home/help'),
          ),
          _drawerLabel(
            icon: Icons.cached_outlined,
            labelText: 'キャッシュの管理',
            onTap: () => routemaster.push('/home/cache_management'),
          ),
          _drawerLabel(
            icon: Icons.credit_card_outlined,
            labelText: 'ライセンス情報',
            onTap: () => routemaster.push('/home/license'),
          ),
          _drawerLabel(
            icon: Icons.forum_outlined,
            labelText: 'ご意見',
            onTap: () async {
              const String url =
                  'https://docs.google.com/forms/d/e/1FAIpQLSdh-0ffd0-EPukB-8FqUgPA4i4ToTfs1Ax2UWvM1TuiqyJqlQ/viewform?usp=sharing';
              if (await canLaunchUrlString(url)) {
                await launchUrlString(url);
              } else {
                throw 'アクセスに失敗しました。';
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _drawerLabel({
    required IconData icon,
    required String labelText,
    void Function()? onTap,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.only(
          left: PaddingSize.buttonHorizontal,
          top: PaddingSize.normal,
          bottom: PaddingSize.normal,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: IconSize.drawer,
              color: AppColor.brand.secondary,
            ),
            const SizedBox(width: MarginSize.minimum),
            Text(
              labelText,
              style: const TextStyle(fontSize: FontSize.body),
            ),
          ],
        ),
      ),
      onTap: () => onTap != null ? routemaster.pop().whenComplete(onTap) : null,
    );
  }
}
