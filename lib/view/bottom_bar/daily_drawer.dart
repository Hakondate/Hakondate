import 'package:flutter/material.dart';
import 'package:hakondate/router/routes.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';

class DailyDrawer extends StatelessWidget {
  const DailyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            Image.asset(
              'assets/images/icon.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
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
        children: [
          const SizedBox(height: SpaceSize.paragraph),
          _drawerLabel(
            icon: Icons.account_circle_outlined,
            labelText: 'ユーザー情報',
            onTap: () => {routemaster.pop(), routemaster.push('/home/setting')},
          ),
          _drawerLabel(
            icon: Icons.agriculture_outlined,
            labelText: '産地情報',
            onTap: () => {routemaster.pop(), routemaster.push('/home/origin')},
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
            onTap: () => {routemaster.pop(), routemaster.push('/home/terms')},
          ),
          _drawerLabel(
            icon: Icons.info_outlined,
            labelText: 'インフォメーション',
            onTap: () =>
                {routemaster.pop(), routemaster.push('/home/about_us')},
          ),
          _drawerLabel(
            icon: Icons.help_outlined,
            labelText: 'ヘルプ',
            onTap: () => {routemaster.pop(), routemaster.push('/home/help')},
          ),
          _drawerLabel(
            icon: Icons.credit_card_outlined,
            labelText: 'ライセンス情報',
            onTap: () => {routemaster.pop(), routemaster.push('home/license')},
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
        padding: const EdgeInsets.only(
          left: PaddingSize.buttonHorizontal,
          top: PaddingSize.normal,
          bottom: PaddingSize.normal,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: IconSize.drawer,
              color: AppColor.brand.secondary,
            ),
            const SizedBox(width: MarginSize.minimum),
            Text(labelText, style: const TextStyle(fontSize: FontSize.body)),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
