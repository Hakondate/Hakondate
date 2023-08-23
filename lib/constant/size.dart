/* 定数定義 */
class FontSize {
  static const double annotation = 12;  // 注意文
  static const double body = 16;        // 本文
  static const double label = 18;       // ラベル内
  static const double heading = 20;     // 大見出し
  static const double subheading = 20;  // 副見出し
  static const double status = 24;      // ステータス表示
}

class SpaceSize {
  static const double line = 8;       // 基本行間
  static const double paragraph = 16; // 段落毎の行間
}

class MarginSize {
  static const double minimum = 8;            // 最小のマージン
  static const double normal = 16;            // 通常のマージン
  static const double normalVertical = 30;    // 水平方向の基本マージン
  static const double normalHorizontal = 25;  // 垂直方向の基本マージン
  static const double kTabBarHeight = 50;     // BottomNavigationBarの高さ
  static const double shadow = 1;             // 影のサイズ
}

class PaddingSize {
  static const double minimum = 8;                // 小さめ
  static const double normal = 16;                // 基本余白
  static const double content = 32;               // ラベル内の左右余白など
  static const double buttonVertical = 5;         // ボタンの水平方向の基本マージン
  static const double buttonHorizontal = 25;      // ボタンの垂直方向の基本マージン
  static const double buttonHorizontalLarge = 30; // ボタンの垂直方向の大きなマージン
}

class BorderSize {
  static const double normal = 2;           // 標準の太さ
}

class IconSize {
  static const double help = 20;              // ヘルプ用
  static const double drawer = 24;            // ドロワー用
  static const double navigationItem = 28;    // ボトムバー用
  static const double noImage = 32;           // レシピのサムネイル用
  static const double homeFoodIcon = 40;      // ホームのフードアイコン用
}

class UiSize {
  static const double calendarTileHeight = 180; // カレンダー画面の高さ
}
