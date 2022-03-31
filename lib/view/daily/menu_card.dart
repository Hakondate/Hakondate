import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/router/routes.dart';

import 'package:hakondate_v2/unit/size.dart';
import 'package:hakondate_v2/view_model/single_page/daily_view_model.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final store = ref.watch(dailyProvider);
        final foodIcons = [
          'assets/images/food_icon/main_food.png',
          'assets/images/food_icon/drink.png',
          'assets/images/food_icon/side_food1.png',
          'assets/images/food_icon/side_food2.png',
          'assets/images/food_icon/side_food3.png',
          'assets/images/food_icon/side_food4.png',
          'assets/images/food_icon/side_food5.png',
          'assets/images/food_icon/side_food6.png',
          'assets/images/food_icon/side_food7.png',
          'assets/images/food_icon/side_food8.png',
          'assets/images/food_icon/side_food9.png',
        ];

        return Card(
          child: Column(
            children: [
              Image.asset('assets/images/label/menuLabel.png'),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(PaddingSize.minimum),
                itemCount: store.menu!.dishes.length,
                itemBuilder: (BuildContext context, int i) {
                  return Card(
                    child: ListTile(
                      leading: (i < foodIcons.length)
                          ? Image.asset(foodIcons[i], width: IconSize.homeFoodIcon)
                          : Image.asset(
                        foodIcons[foodIcons.length - 1],
                        width: IconSize.homeFoodIcon,
                      ),
                      title: Text(
                        store.menu!.dishes[i].name,
                        style: const TextStyle(
                          fontSize: FontSize.dishName,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                      onTap: () => routemaster.replace('dish/1'),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
