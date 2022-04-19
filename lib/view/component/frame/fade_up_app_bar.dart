import 'package:flutter/material.dart';
import 'package:hakondate_v2/router/routes.dart';

class FadeUpAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FadeUpAppBar({
    Key? key,
    this.title,
  }) : super(key: key);

  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: title,
      actions: [
        IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: const Icon(Icons.close),
          onPressed: () => routemaster.pop(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
