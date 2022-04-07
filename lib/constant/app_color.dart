import 'dart:ui';

class AppColor {
  static final brand = _Brand();
  static final text = _Text();
}

class _Brand {
  final Color primary = const Color(0xFFFFFFFF);
  final Color secondary = const Color(0xFFFFAB40);
  final Color secondaryLight = const Color(0xFFFFC966);
}

class _Text {
  final Color primary = const Color(0xFF373737);
  final Color appBarTitle = const Color(0xFF373737);
  final Color blackMid = const Color(0x61000000);
  final Color white = const Color(0xFFFFFFFF);
  final Color blue = const Color(0xFF448AFF);
}
