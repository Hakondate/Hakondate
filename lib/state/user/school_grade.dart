part of 'user_state.dart';

/// 栄養基準となる学年の単位
///  小学1.2年 => "lower"
///  小学3.4年 => "middle"
///  小学5.6年 => "upper"
///  中学生    => "junior"
///  データ不備 => "junior"
enum SchoolGrade {
  lower(slnsFileName: 'lower.json'),
  middle(slnsFileName: 'middle.json'),
  upper(slnsFileName: 'upper.json'),
  junior(slnsFileName: 'junior.json');

  const SchoolGrade({required this.slnsFileName});
  final String slnsFileName;

  String get slnsPath => 'assets/slns/' + slnsFileName;
}
