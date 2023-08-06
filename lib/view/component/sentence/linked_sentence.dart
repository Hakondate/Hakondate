import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';

class LinkedSentence extends StatelessWidget {
  const LinkedSentence ({
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
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: always_specify_types
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: TextStyle(
                color:AppColor.text.link,
                fontSize: FontSize.body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
