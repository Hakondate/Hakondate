import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/constant/app_color.dart';

Widget title({required String text}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: always_specify_types
      children: [
        Text(
          text, 
          style: const TextStyle(
            fontSize: 25,
            decoration: TextDecoration.underline, 
            decorationStyle: TextDecorationStyle.dashed,
            decorationColor: Colors.orange,
          ),
        ),
        const SizedBox(height: SpaceSize.line),
      ],
    );
  }
  Widget headline({required String text}){
    return Column(
      children: [
        Row(
          // ignore: always_specify_types
          children: [
            const SizedBox(
              width: SpaceSize.line,
              height: SpaceSize.paragraph,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.orange),
              ),
            ),
            const SizedBox(
              width: SpaceSize.line,
              height: SpaceSize.paragraph,
            ),
            Text(
              text, 
              style: const TextStyle(
                fontSize:FontSize.subheading,
              ),
            ),
          ],
        ),
        const SizedBox(height: SpaceSize.line),
      ],
    );  
  }
  Widget sentence({required String text}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: always_specify_types
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: FontSize.body,
            ),
          ),
        ),
        const SizedBox(height: SpaceSize.paragraph),
      ],
    );
  }


  
  Widget linkSentence({required String text, required String url}){
    return InkWell(
      onTap: () async {
        if (
          await canLaunchUrl(
            Uri.parse(url),
          )
        ) {
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
  Widget annotation({required String text, required String url}){
    return InkWell(
      onTap: () async {
        if (
          await canLaunchUrl(
            Uri.parse(url),
          )
        ) {
          await launchUrl(
            Uri.parse(url),
              mode: LaunchMode.inAppWebView,
          );
        }
      },
      child: Column(
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

