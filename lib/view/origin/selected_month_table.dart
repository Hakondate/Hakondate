import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/origin/origin_model.dart';
import 'package:hakondate/state/origin/origin_state.dart';
import 'package:hakondate/view/component/label/description_text.dart';
import 'package:hakondate/view_model/single_page/origin/origin_view_model.dart';

class SelectedMonthTable extends ConsumerWidget {
  const SelectedMonthTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(originViewModelProvider).maybeWhen(
      data: (OriginState data) {
        if (data.origins.isEmpty) {
          return const SizedBox.shrink();
        }

        final OriginModel origin = data.selectedOrigin;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: origin.categories.map(
            (OriginCategoryModel category) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: MarginSize.minimum),
                DescriptionText.subheading(label: category.name),
                ...category.items.map(
                  (OriginItemModel item) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(PaddingSize.minimum),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              item.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(child: Text(item.prefectures.join('，'))),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ).toList(),
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}
