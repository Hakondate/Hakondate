import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/model/origin/origin_model.dart';
import 'package:hakondate/state/origin/origin_state.dart';
import 'package:hakondate/view/component/label/description_text.dart';
import 'package:hakondate/view_model/single_page/origin/origin_view_model.dart';

class DropdownMonthSelector extends ConsumerWidget {
  const DropdownMonthSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(originViewModelProvider).maybeWhen(
          data: (OriginState data) {
            if (data.origins.isEmpty) {
              return DescriptionText.body(
                label: '月毎の産地情報はありません',
              );
            }

            return DropdownMenu<OriginModel>(
              menuHeight: MediaQuery.of(context).size.height * 0.4,
              initialSelection: data.selectedOrigin,
              menuStyle: MenuStyle(
                surfaceTintColor: MaterialStatePropertyAll<Color>(AppColor.ui.white),
              ),
              onSelected: (OriginModel? value) =>
                  ref.read(originViewModelProvider.notifier).updateSelectedOrigin(origin: value!),
              dropdownMenuEntries: data.origins
                  .map(
                    (OriginModel origin) => DropdownMenuEntry<OriginModel>(
                      value: origin,
                      label: DateFormat('yyyy年M月').format(origin.date),
                    ),
                  )
                  .toList(),
            );
          },
          orElse: () => DescriptionText.body(
            label: '月毎の産地情報はありません',
          ),
        );
  }
}
