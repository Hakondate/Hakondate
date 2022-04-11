import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/constant/app_color.dart';
import 'package:hakondate_v2/model/dish/dish_model.dart';
import 'package:hakondate_v2/router/routes.dart';
import 'package:hakondate_v2/constant/size.dart';
import 'package:hakondate_v2/view_model/single_page/daily_view_model.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final store = ref.watch(dailyProvider);

        return Card(
          child: Column(
            children: [
              Image.asset('assets/images/label/menuLabel.png'),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                padding: const EdgeInsets.all(PaddingSize.minimum),
                mainAxisSpacing: MarginSize.minimum,
                crossAxisSpacing: MarginSize.minimum,
                childAspectRatio: 2 / 1,
                children: store.menu!.dishes.map((DishModel dish) => _menuTile(dish)).toList(),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _menuTile(DishModel dish) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: AssetImage('assets/images/menu_tile/${dish.category.getValue()}.png'),
          fit: BoxFit.fitWidth,
        ),
        color: AppColor.ui.secondaryUltraLight,
      ),
      child: Center(
        child: Text(
          dish.name,
          style: const TextStyle(
            fontSize: FontSize.dishName,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
