import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';

class GridFrame extends StatelessWidget {
  const GridFrame({
    super.key,
    this.onTap,
    this.borderColor,
    this.child,
  });

  final void Function()? onTap;
  final Color? borderColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(MarginSize.shadow),
        width: double.infinity,
        height: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: AppColor.ui.white,
          borderRadius: BorderRadius.circular(16),
          border: (borderColor != null) ? Border.all(
            color: borderColor!,
            width: BorderSize.normal,
          ) : null,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColor.ui.shadow,
              blurRadius: 1,
              offset: const Offset(0, MarginSize.shadow),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
