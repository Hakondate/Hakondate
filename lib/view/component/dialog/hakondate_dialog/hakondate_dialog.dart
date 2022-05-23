import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';

part 'hakondate_action_button.dart';

class HakondateDialog extends StatelessWidget {
  const HakondateDialog({
    Key? key,
    this.title,
    required this.body,
    required this.firstAction,
    this.secondAction,
  }) : super(key: key);

  final Widget? title;
  final Widget body;
  final HakondateActionButton firstAction;
  final HakondateActionButton? secondAction;

  @override
  Widget build(BuildContext context) {
    final double width = (MediaQuery.of(context).size.width < 320.0)
        ? MediaQuery.of(context).size.width * 0.8
        : 320.0;

    return AlertDialog(
      backgroundColor: AppColor.ui.white,
      contentPadding: const EdgeInsets.all(0.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      content: SizedBox(
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (title != null) _header(),
            _body(),
            Divider(
              thickness: 1.0,
              color: AppColor.brand.secondaryLight,
              height: 0.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (secondAction != null) ...[
                  Expanded(child: secondAction!),
                  SizedBox(
                    height: 56.0,
                    child: VerticalDivider(
                      thickness: 1.0,
                      color: AppColor.brand.secondaryLight,
                      width: 1.0,
                    ),
                  ),
                ],
                Expanded(child: firstAction),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return DefaultTextStyle(
      style: TextStyle(
        color: AppColor.ui.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        height: 1.2,
      ),
      textAlign: TextAlign.center,
      child: Container(
        height: 48.0,
        width: double.infinity,
        color: AppColor.brand.secondaryLight,
        child: Center(child: title),
      ),
    );
  }

  Widget _body() {
    if (body is Text) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 56.0,
          horizontal: PaddingSize.content,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: AppColor.text.primary,
            fontSize: FontSize.body,
          ),
          textAlign: TextAlign.center,
          child: body,
        ),
      );
    }

    return body;
  }
}
