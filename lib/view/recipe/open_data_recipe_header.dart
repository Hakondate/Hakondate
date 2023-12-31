import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';

class OpenDataRecipeHeader extends StatelessWidget {
  const OpenDataRecipeHeader({
    required this.title,
    this.description,
    this.isRemoveTopMargin = false,
    super.key,
  });

  final Widget title;
  final Widget? description;
  final bool isRemoveTopMargin;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: isRemoveTopMargin ? 0.0 : PaddingSize.normal,
            bottom: PaddingSize.minimum,
          ),
          child: Container(
            padding: const EdgeInsets.only(left: PaddingSize.minimum),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 8,
                  color: AppColor.brand.secondary,
                ),
              ),
            ),
            child: DefaultTextStyle(
              style: TextStyle(
                color: AppColor.text.primary,
                fontSize: FontSize.heading,
                fontWeight: FontWeight.bold,
                fontFamily: 'MPLUSRounded1c',
              ),
              child: title,
            ),
          ),
        ),
        if (description != null)
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                left: PaddingSize.minimum,
                right: PaddingSize.minimum,
                bottom: PaddingSize.minimum,
              ),
              child: DefaultTextStyle(
                style: TextStyle(
                  color: AppColor.text.primary,
                  fontFamily: 'MPLUSRounded1c',
                ),
                child: description!,
              ),
            ),
          ),
      ],
    );
  }
}
