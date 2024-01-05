import 'package:flutter/material.dart';

import 'package:hakondate/constant/size.dart';

class ErrorIndication extends StatelessWidget {
  const ErrorIndication({super.key, this.errorState});
  final String? errorState;

  @override
  Widget build(BuildContext context) {
    if (errorState == null) return const SizedBox.shrink();
    if (errorState!.isEmpty) return const SizedBox.shrink();

    return Builder(
      builder: (BuildContext context) {
        return Text(
          errorState!,
          style: TextStyle(
            fontSize: FontSize.annotation,
            color: Theme.of(context).colorScheme.error,
          ),
        );
      },
    );
  }
}
