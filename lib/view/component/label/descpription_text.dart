import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:url_launcher/url_launcher.dart';

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
    bool isZeroBottomPadding = false,
  }) => DescriptionText(
    text: Padding(
      padding: EdgeInsets.only(
        left: PaddingSize.minimum,
        bottom: isZeroBottomPadding ? 0 : SpaceSize.paragraph,
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
    required String url,
    bool isAnnotation = false,
  }) => DescriptionText(
    text: Padding(
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
            ..onTap = () async {
              if (await canLaunchUrl(
                Uri.parse(url),
              )) {
                await launchUrl(
                  Uri.parse(url),
                  mode:LaunchMode.inAppWebView,
                );
              }    
            },
          text: label,
        ),
      ),
    ),
  );

  final Widget text;

  @override
  Widget build(BuildContext context) {
    return text;
  }
}
