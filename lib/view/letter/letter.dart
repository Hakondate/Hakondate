import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/view_model/single_page/letter_view_model.dart';

class Letter extends StatelessWidget {
  const Letter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お便り'),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, _) {
          final List<LetterMetadataModel> letters = ref.watch(letterProvider).letters;

          return Padding(
            padding: const EdgeInsets.all(PaddingSize.minimum),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: MarginSize.minimum,
              crossAxisSpacing: MarginSize.minimum,
              children: letters.map((letter) => _gridTile(letter)).toList(),
            ),
          );
        },
      ),
    );
  }

  Widget _gridTile(LetterMetadataModel letter) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return GestureDetector(
          onTap: () => ref.read(letterProvider.notifier).transitionLetterPDF(letter: letter),
          child: Container(
            margin: const EdgeInsets.all(MarginSize.shadow),
            padding: const EdgeInsets.fromLTRB(
              PaddingSize.normal,
              PaddingSize.normal,
              PaddingSize.normal,
              PaddingSize.minimum,
            ),
            width: double.infinity,
            height: double.infinity,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              color: AppColor.ui.white,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: AppColor.brand.secondaryLight,
                width: BorderSize.normal,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColor.ui.shadow,
                  blurRadius: 1.0,
                  offset: const Offset(0.0, MarginSize.shadow),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  letter.title,
                  style: const TextStyle(
                    fontSize: FontSize.subheading,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: PaddingSize.minimum),
                Consumer(
                  builder: (BuildContext context, WidgetRef ref, _) {
                    return FutureBuilder(
                      future: ref.read(letterProvider.notifier).getSchoolLabels(letter.parentId),
                      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
                        if (snapshot.hasData && snapshot.data != null) {
                          return Wrap(
                            spacing: 2.0,
                            runSpacing: 4.0,
                            children: snapshot.data!.map((name) => Chip(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              visualDensity: const VisualDensity(
                                horizontal: -4.0,
                                vertical: -4.0,
                              ),
                              elevation: 0.0,
                              backgroundColor: AppColor.ui.white,
                              shape: StadiumBorder(
                                side: BorderSide(
                                  width: 2.0,
                                  color: AppColor.brand.tertiary,
                                ),
                              ),
                              label: Text(
                                name,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: AppColor.brand.tertiary,
                                  height: 1.0,
                                ),
                              ),
                            )).toList(),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    );
                  },
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    DateFormat('yyyy年M月d日').format(letter.updateAt),
                    style: TextStyle(
                      color: AppColor.text.gray,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
