import 'package:hakondate/model/nutrients/nutrients_model.dart';

/// レーダーチャート用の6軸（エネルギー/たんぱく質/ビタミン/ミネラル/炭水化物/脂質）
/// をSLNS比で正規化（%）して返す。maxValueで上限を設定可能（既定120）。
List<double> computeSixAxisPercentFromSlns({
  required double energy,
  required double protein,
  required double retinol,
  required double vitaminB1,
  required double vitaminB2,
  required double vitaminC,
  required double calcium,
  required double magnesium,
  required double iron,
  required double zinc,
  required double carbohydrate,
  required double lipid,
  required NutrientsModel slns,
  double maxValue = 120,
}) {
  final double vitaminSufficiency =
      (retinol / slns.retinol + vitaminB1 / slns.vitaminB1 + vitaminB2 / slns.vitaminB2 + vitaminC / slns.vitaminC) / 4 * 100.0;
  final double mineralSufficiency =
      (calcium / slns.calcium + magnesium / slns.magnesium + iron / slns.iron + zinc / slns.zinc) / 4 * 100.0;

  final List<double> values = <double>[
    energy / slns.energy * 100.0,
    protein / slns.protein * 100.0,
    vitaminSufficiency,
    mineralSufficiency,
    carbohydrate / slns.carbohydrate * 100.0,
    lipid / slns.lipid * 100.0,
  ];

  return values.map((double v) => v > maxValue ? maxValue : v).toList();
}

/// レーダーチャート用の実数ラベル6軸を返す。
List<double> sixAxisRaw({
  required double energy,
  required double protein,
  required double vitamin,
  required double mineral,
  required double carbohydrate,
  required double lipid,
}) => <double>[energy, protein, vitamin, mineral, carbohydrate, lipid];
