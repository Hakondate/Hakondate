import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/view_model/single_page/information/information_view_model.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    required this.text,
    super.key,
  });

  factory DescriptionText.headline({
    required String label,
  }) => DescriptionText(
    text: Padding(
      padding: const EdgeInsets.only(bottom: SpaceSize.line),
      child: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: FontSize.heading,
          fontWeight: FontWeight.w500,
        ),
        child: Text(label),
      ),
    ),
  );

  factory DescriptionText.subheading({
    required String label,
  }) => DescriptionText(
    text: Padding(
      padding: const EdgeInsets.only(bottom: SpaceSize.line),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: SpaceSize.line,
            height: SpaceSize.paragraph,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColor.brand.secondary,
              ),
            ),
          ),
          const SizedBox(
            width: SpaceSize.line,
          ),
          DefaultTextStyle.merge(
            style: const TextStyle(
              fontSize: FontSize.subheading,
              fontWeight: FontWeight.w500,
            ),
            child: Text(label),
          ),
        ],
      ),
    ),
  );

  factory DescriptionText.body({
    required String label,
  }) => DescriptionText(
    text: Padding(
      padding: const EdgeInsets.only(
        left: PaddingSize.minimum,
        bottom: SpaceSize.paragraph,
      ),
      child: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: FontSize.body,
        ),
        child: Text(label),
      ),
    ),
  );

  factory DescriptionText.linked({
    required String label,
    required String scheme,
    required String path,
    bool isAnnotation = false,
  }) => DescriptionText(
    text: Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return Padding(
          padding: const EdgeInsets.only(
            left: PaddingSize.minimum,
          ),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: AppColor.text.link,
                fontFamily: 'MPLUSRounded1c',
                fontSize: isAnnotation ? FontSize.annotation : FontSize.body,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => ref.read(informationViewModelProvider).onTap(scheme: scheme,path: path),
              text: label,
            ),
          ),
        );
      },
    ),
  );

  final Widget text;

  @override
  Widget build(BuildContext context) {
    return text;
  }
}
