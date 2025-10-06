class ReviewPopupCondition {
  // dailyを表示してからpopupの表示までのdelay
  static const Duration popupDelay = Duration(seconds: 10);
  // ポップアップを表示する条件(初回)
  static const int usageTimeInMin = 20;
  // ポップアップを再表示する条件
  static const int dayFromLastPopup = 7;
  static const int usageTimeFromLastPopupInMin = 60;
}
