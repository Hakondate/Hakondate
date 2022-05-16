part of 'user_state.dart';

/* 栄養基準となる学年の単位
  * 小学1.2年 => "lower"
  * 小学3.4年 => "middle"
  * 小学5.6年 => "upper"
  * 中学生    => "junior"
  * データ不備 => "junior" */
enum SchoolGrade {
  lower,
  middle,
  upper,
  junior,
}

extension SchoolGradeExtension on SchoolGrade {
  String get slnsPath {
    switch (this) {
      case SchoolGrade.lower:
        return 'assets/slns/lower.json';
      case SchoolGrade.middle:
        return 'assets/slns/middle.json';
      case SchoolGrade.upper:
        return 'assets/slns/upper.json';
      default:
        return 'assets/slns/junior.json';
    }
  }
}
