import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/view_model/single_page/dictionary_view_model.dart';

class DictionaryGrid extends ConsumerWidget {
  const DictionaryGrid({
    required this.group,
    super.key,
  });

  final DictionaryGroup group;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(dictionaryProvider.notifier).selectGroup(group);
        routemaster.push(group.name);
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: group.color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(UiSize.minimumGridCircular),
          border: Border.all(
            color: group.color,
            width: BorderSize.bold,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: UiSize.dictionaryGroupBox,
                height: 32,
                decoration: BoxDecoration(
                  color: group.color,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(UiSize.minimumGridCircular),
                  ),
                ),
                child: Center(
                  child: Text(
                    '${group.groupNumber}群',
                    style: TextStyle(
                      color: AppColor.text.white,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              child: Text(
                group.displayLabel,
                style: const TextStyle(
                  fontSize: FontSize.label,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
