import 'package:flutter/material.dart';

import 'package:hakondate/router/routes.dart';

class FadeUpAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FadeUpAppBar({
    super.key,
    this.title,
  });

  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: title,
      actions: <Widget>[
        IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: const Icon(Icons.close),
          onPressed: routemaster.pop,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
