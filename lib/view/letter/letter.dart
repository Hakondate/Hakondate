import 'package:hakondate/state/letter/letter_state.dart';
import 'package:hakondate/view/component/tile/grid_frame.dart';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/view_model/single_page/letter_view_model.dart';
import 'package:shimmer/shimmer.dart';

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
            child: GridView.builder(
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: MarginSize.minimum,
                crossAxisSpacing: MarginSize.minimum,
              ),
              itemCount: letters.length,
              itemBuilder: (BuildContext context, int index) {
                if (!ref.read(letterProvider.notifier).isEndListing() &&
                    ref.watch(letterProvider).status != LetterConnectionStatus.loading &&
                    index == letters.length - 4) {
                  Future(ref.read(letterProvider.notifier).getLetters);
                }

                return _gridTile(index);
              },
            ),
          );
        },
      ),
    );
  }

  Widget _gridTile(int index) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final LetterMetadataModel letter = ref.watch(letterProvider).letters[index];

        if (letter is LetterMetadataModelData) {
          return GridFrame(
            onTap: () => ref.read(letterProvider.notifier).transitionLetterPDF(letter: letter),
            borderColor: AppColor.brand.secondaryLight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                PaddingSize.normal,
                PaddingSize.normal,
                PaddingSize.normal,
                PaddingSize.minimum,
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

        return Shimmer.fromColors(
          baseColor: AppColor.ui.shimmerBase,
          highlightColor: AppColor.ui.shimmerHighlight,
          child: const GridFrame(),
        );
      }
    );
  }
}
