import 'dart:ui';

class AppColor {
  static final brand = _Brand();
  static final text = _Text();
  static final ui = _Ui();
}

class _Brand {
  final Color primary = const Color(0xFFFFFFFF);
  final Color secondary = const Color(0xFFFFAB40);
  final Color secondaryLight = const Color(0xFFFFC966);
}

class _Text {
  final Color primary = const Color(0xFF373737);
  final Color appBarTitle = const Color(0xFF373737);
  final Color gray = const Color(0xFF808080);
  final Color blackMid = const Color(0x61000000);
  final Color white = const Color(0xFFFFFFFF);
  final Color blue = const Color(0xFF448AFF);
}

class _Ui {
  final Color secondaryUltraLight = const Color(0xFFFFEDCC);
  final Color white = const Color(0xFFFFFFFF);
  final Color black = const Color(0xFF000000);
  final Color shadow = const Color(0xFF000000).withOpacity(0.4);
  final Color saturday = const Color(0xFF8EAFED);
  final Color sunday = const Color(0xFFED8EAF);
}
