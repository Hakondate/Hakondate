import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/util/exception/class_type_exception.dart';
import 'package:hakondate/view_model/single_page/daily_view_model.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final MenuModel menu = ref.watch(dailyProvider).menu;

        if (menu is! LunchesDayMenuModel) {
          throw const ClassTypeException("'menu' is not 'LunchesDayMenuModel'");
        }

        return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/label/menuLabel.png'),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                padding: const EdgeInsets.all(PaddingSize.minimum),
                mainAxisSpacing: MarginSize.minimum,
                crossAxisSpacing: MarginSize.minimum,
                childAspectRatio: 2 / 1,
                children: menu.dishes.map(_menuTile).toList(),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _menuTile(DishModel dish) {
    return GestureDetector(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColor.ui.white.withOpacity(0.8),
            width: 3,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/menu_tile/${(dish.category != null) ? dish.category!.value : 'side'}.png'),
            fit: BoxFit.fitWidth,
          ),
          color: AppColor.brand.secondary,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColor.ui.shadow,
              blurRadius: 1,
              offset: const Offset(0, MarginSize.shadow),
            ),
          ],
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColor.ui.white.withOpacity(0.7),
          ),
          child: Center(
            child: Text(
              dish.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      onTap: () => routemaster.push('dish'),
    );
  }
}
