import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/state/letter/letter_state.dart';
import 'package:hakondate/view/component/frame/stateful_wrapper.dart';
import 'package:hakondate/view/component/tile/grid_frame.dart';
import 'package:hakondate/view/letter/non_letter.dart';
import 'package:hakondate/view_model/single_page/letter/letter_view_model.dart';

class Letter extends ConsumerWidget {
  const Letter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お便り'),
      ),
      body: StatefulWrapper(
        onInit: () => ref.read(letterViewModelProvider.notifier).getLetters(),
        child: Builder(
          builder: (BuildContext context) {
            final List<LetterMetadataModel> letters = ref.watch(letterViewModelProvider).letters;

            if (letters.isEmpty) return const NonLetter();

            return Scrollbar(
              child: Padding(
                padding: const EdgeInsets.all(PaddingSize.minimum),
                child: RefreshIndicator(
                  onRefresh: () => ref.read(letterViewModelProvider.notifier).reloadLetters(),
                  color: AppColor.brand.secondary,
                  backgroundColor: AppColor.ui.white,
                  displacement: 0,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: MarginSize.minimum,
                      crossAxisSpacing: MarginSize.minimum,
                    ),
                    itemCount: letters.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (!ref.watch(letterViewModelProvider).isEndListing &&
                          ref.watch(letterViewModelProvider).status != LetterConnectionStatus.loading &&
                          index == letters.length - 4) {
                        Future<void>(ref.read(letterViewModelProvider.notifier).getLetters);
                      }

                      return _gridTile(index);
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _gridTile(int index) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final LetterMetadataModel letter = ref.watch(letterViewModelProvider).letters[index];

        if (letter is LetterMetadataModelData) {
          return GridFrame(
            onTap: () => ref.read(letterViewModelProvider.notifier).transitionLetterPDF(letter: letter),
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
                children: <Widget>[
                  Text(
                    letter.title,
                    style: const TextStyle(
                      fontSize: FontSize.heading,
                      fontWeight: FontWeight.bold,
                      height: 1.1,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: PaddingSize.minimum),
                  Consumer(
                    builder: (BuildContext context, WidgetRef ref, _) {
                      return FutureBuilder<List<String>>(
                        future: ref.read(letterViewModelProvider.notifier).getSchoolLabels(letter.parentId),
                        builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
                          if (snapshot.hasData && snapshot.data != null) {
                            return Wrap(
                              spacing: 2,
                              runSpacing: 4,
                              children: snapshot.data!
                                  .map(
                                    (String name) => Chip(
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      visualDensity: const VisualDensity(
                                        horizontal: -4,
                                        vertical: -4,
                                      ),
                                      elevation: 0,
                                      backgroundColor: AppColor.ui.white,
                                      shape: StadiumBorder(
                                        side: BorderSide(
                                          width: 2,
                                          color: AppColor.brand.tertiary,
                                        ),
                                      ),
                                      label: Text(
                                        name,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColor.brand.tertiary,
                                          height: 1,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
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
      },
    );
  }
}
