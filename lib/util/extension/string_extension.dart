extension HiraKataConvertion on String {
  String toHiragana() {
    return replaceAllMapped(RegExp('[ァ-ヴ]'), (Match match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) - 0x60));
  }
  String toKatakana() {
    return replaceAllMapped(RegExp('[ぁ-ゔ]'), (Match match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 0x60));
  }
}
