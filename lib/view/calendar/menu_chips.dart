import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dish/dish_model.dart';
import 'package:hakondate/model/menu/menu_model.dart';

class MenuChips extends StatelessWidget {
  const MenuChips({
    required this.menu,
    super.key,
  });

  final LunchesDayMenuModel menu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PaddingSize.minimum, vertical: 2),
      child: Wrap(
        spacing: 4,
        runSpacing: -6,
        children: menu.dishes
            .map(
              (DishModel dish) => Chip(
                side: BorderSide(
                  color: AppColor.brand.secondaryLight,
                  width: 2,
                ),
                backgroundColor: AppColor.ui.white,
                label: Text(
                  dish.name,
                  style: TextStyle(
                    color: AppColor.text.primary,
                    fontSize: 14,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
