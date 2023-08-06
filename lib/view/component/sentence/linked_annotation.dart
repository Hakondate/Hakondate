import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';

class LinkedAnnotation extends StatelessWidget {
  const LinkedAnnotation ({
    required this.text, 
    required this.url,
    super.key
    });

    final String text;
    final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunchUrl(
          Uri.parse(url),
        )) {
          await launchUrl(
            Uri.parse(url),
              mode: LaunchMode.inAppWebView,
          );
        }
      },
      child: Column(
        // ignore: always_specify_types
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              text,
              textAlign: TextAlign.end,
              style: TextStyle(
                color: AppColor.text.link,
                fontSize: FontSize.indication,
              ),
            ),
          ),
          const SizedBox(height: SpaceSize.paragraph),
        ],
      ),
    );
  }
}
