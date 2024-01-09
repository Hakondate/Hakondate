part of 'user_state.dart';

/// 栄養基準となる学年の単位
///  小学1.2年 => "lower"
///  小学3.4年 => "middle"
///  小学5.6年 => "upper"
///  中学生    => "junior"
///  データ不備 => "junior"
enum SchoolGrade {
  lower(
      slnsJsonFileName: 'lower.json',
      slnsImageFileName: 'lowerSLIS.png',
      slnsZincFileName: 'elementalZinc.png',
  ),
  middle(
      slnsJsonFileName: 'middle.json',
      slnsImageFileName: 'middleSLIS.png',
      slnsZincFileName: 'elementalZinc.png',
  ),
  upper(
      slnsJsonFileName: 'upper.json',
      slnsImageFileName: 'upperSLIS.png',
      slnsZincFileName: 'elementalZinc.png',
  ),
  junior(
      slnsJsonFileName: 'junior.json',
      slnsImageFileName: 'juniorSLIS.png',
      slnsZincFileName: 'juniorZinc.png',
  );

  const SchoolGrade({
    required this.slnsJsonFileName,
    required this.slnsImageFileName,
    required this.slnsZincFileName,
  });

  final String slnsJsonFileName;
  final String slnsImageFileName;
  final String slnsZincFileName;

  String get slnsJsonPath => 'assets/slns/json/$slnsJsonFileName';
  String get slnsImagePath => 'assets/slns/image/$slnsImageFileName';
  String get slnsZincImagePath => 'assets/slns/image/$slnsZincFileName';
}
