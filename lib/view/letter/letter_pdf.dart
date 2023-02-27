import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/view/component/dialog/exception_dialog/download_exception_dialog.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view_model/single_page/letter_view_model.dart';

class LetterPDF extends ConsumerWidget {
  const LetterPDF({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LetterMetadataModelData? letter = ref.watch(letterProvider).letter;

    if (letter == null) {
      return Scaffold(
        appBar: const FadeUpAppBar(
          title: Text('読み込みエラー'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/status/error.png',
                width: MediaQuery.of(context).size.width / 2,
              ),
              const SizedBox(height: MarginSize.normal),
              Text(
                '読み込みに失敗しました',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: AppColor.text.primary,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: FadeUpAppBar(
        title: Text(letter.title),
      ),
      body: FutureBuilder(
        future: ref.read(letterProvider.notifier).getLetterPDF(path: letter.path),
        builder: (BuildContext context, AsyncSnapshot<Uint8List> snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColor.brand.secondary,
              ),
            );
          }

          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
            return PDFView(
              pdfData: snapshot.data,
              enableSwipe: false,
              onError: (_) async => await showDialog(
                context: context,
                builder: (BuildContext context) => DownloadExceptionDialog(
                  onTapRetry: () => routemaster.pop().whenComplete(() =>
                      ref.read(letterProvider.notifier).getLetterPDF(path: letter.path)),
                  onTapPop: () => routemaster.pop().whenComplete(() => routemaster.pop()),
                ),
              ),
            );
          }

          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/status/error.png',
                  width: MediaQuery.of(context).size.width / 2,
                ),
                const SizedBox(height: MarginSize.normal),
                Text(
                  '読み込みに失敗しました',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: AppColor.text.primary,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
