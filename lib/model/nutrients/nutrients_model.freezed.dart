// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrients_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NutrientsModel implements DiagnosticableTreeMixin {
  /// エネルギー
  double get energy;

  /// タンパク質
  double get protein;

  /// 脂質
  double get lipid;

  /// 炭水化物
  double get carbohydrate;

  /// ナトリウム
  double get sodium;

  /// カルシウム
  double get calcium;

  /// マグネシウム
  double get magnesium;

  /// 鉄分
  double get iron;

  /// 亜鉛
  double get zinc;

  /// レチノール活性当量(ビタミンA)
  double get retinol;

  /// ビタミンB1
  double get vitaminB1;

  /// ビタミンB2
  double get vitaminB2;

  /// ビタミンC
  double get vitaminC;

  /// 食物繊維
  double get dietaryFiber;

  /// 食塩相当量
  double get salt;

  /// Create a copy of NutrientsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NutrientsModelCopyWith<NutrientsModel> get copyWith =>
      _$NutrientsModelCopyWithImpl<NutrientsModel>(
          this as NutrientsModel, _$identity);

  /// Serializes this NutrientsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NutrientsModel'))
      ..add(DiagnosticsProperty('energy', energy))
      ..add(DiagnosticsProperty('protein', protein))
      ..add(DiagnosticsProperty('lipid', lipid))
      ..add(DiagnosticsProperty('carbohydrate', carbohydrate))
      ..add(DiagnosticsProperty('sodium', sodium))
      ..add(DiagnosticsProperty('calcium', calcium))
      ..add(DiagnosticsProperty('magnesium', magnesium))
      ..add(DiagnosticsProperty('iron', iron))
      ..add(DiagnosticsProperty('zinc', zinc))
      ..add(DiagnosticsProperty('retinol', retinol))
      ..add(DiagnosticsProperty('vitaminB1', vitaminB1))
      ..add(DiagnosticsProperty('vitaminB2', vitaminB2))
      ..add(DiagnosticsProperty('vitaminC', vitaminC))
      ..add(DiagnosticsProperty('dietaryFiber', dietaryFiber))
      ..add(DiagnosticsProperty('salt', salt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NutrientsModel &&
            (identical(other.energy, energy) || other.energy == energy) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.lipid, lipid) || other.lipid == lipid) &&
            (identical(other.carbohydrate, carbohydrate) ||
                other.carbohydrate == carbohydrate) &&
            (identical(other.sodium, sodium) || other.sodium == sodium) &&
            (identical(other.calcium, calcium) || other.calcium == calcium) &&
            (identical(other.magnesium, magnesium) ||
                other.magnesium == magnesium) &&
            (identical(other.iron, iron) || other.iron == iron) &&
            (identical(other.zinc, zinc) || other.zinc == zinc) &&
            (identical(other.retinol, retinol) || other.retinol == retinol) &&
            (identical(other.vitaminB1, vitaminB1) ||
                other.vitaminB1 == vitaminB1) &&
            (identical(other.vitaminB2, vitaminB2) ||
                other.vitaminB2 == vitaminB2) &&
            (identical(other.vitaminC, vitaminC) ||
                other.vitaminC == vitaminC) &&
            (identical(other.dietaryFiber, dietaryFiber) ||
                other.dietaryFiber == dietaryFiber) &&
            (identical(other.salt, salt) || other.salt == salt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      energy,
      protein,
      lipid,
      carbohydrate,
      sodium,
      calcium,
      magnesium,
      iron,
      zinc,
      retinol,
      vitaminB1,
      vitaminB2,
      vitaminC,
      dietaryFiber,
      salt);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NutrientsModel(energy: $energy, protein: $protein, lipid: $lipid, carbohydrate: $carbohydrate, sodium: $sodium, calcium: $calcium, magnesium: $magnesium, iron: $iron, zinc: $zinc, retinol: $retinol, vitaminB1: $vitaminB1, vitaminB2: $vitaminB2, vitaminC: $vitaminC, dietaryFiber: $dietaryFiber, salt: $salt)';
  }
}

/// @nodoc
abstract mixin class $NutrientsModelCopyWith<$Res> {
  factory $NutrientsModelCopyWith(
          NutrientsModel value, $Res Function(NutrientsModel) _then) =
      _$NutrientsModelCopyWithImpl;
  @useResult
  $Res call(
      {double energy,
      double protein,
      double lipid,
      double carbohydrate,
      double sodium,
      double calcium,
      double magnesium,
      double iron,
      double zinc,
      double retinol,
      double vitaminB1,
      double vitaminB2,
      double vitaminC,
      double dietaryFiber,
      double salt});
}

/// @nodoc
class _$NutrientsModelCopyWithImpl<$Res>
    implements $NutrientsModelCopyWith<$Res> {
  _$NutrientsModelCopyWithImpl(this._self, this._then);

  final NutrientsModel _self;
  final $Res Function(NutrientsModel) _then;

  /// Create a copy of NutrientsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? energy = null,
    Object? protein = null,
    Object? lipid = null,
    Object? carbohydrate = null,
    Object? sodium = null,
    Object? calcium = null,
    Object? magnesium = null,
    Object? iron = null,
    Object? zinc = null,
    Object? retinol = null,
    Object? vitaminB1 = null,
    Object? vitaminB2 = null,
    Object? vitaminC = null,
    Object? dietaryFiber = null,
    Object? salt = null,
  }) {
    return _then(_self.copyWith(
      energy: null == energy
          ? _self.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _self.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      lipid: null == lipid
          ? _self.lipid
          : lipid // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrate: null == carbohydrate
          ? _self.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as double,
      sodium: null == sodium
          ? _self.sodium
          : sodium // ignore: cast_nullable_to_non_nullable
              as double,
      calcium: null == calcium
          ? _self.calcium
          : calcium // ignore: cast_nullable_to_non_nullable
              as double,
      magnesium: null == magnesium
          ? _self.magnesium
          : magnesium // ignore: cast_nullable_to_non_nullable
              as double,
      iron: null == iron
          ? _self.iron
          : iron // ignore: cast_nullable_to_non_nullable
              as double,
      zinc: null == zinc
          ? _self.zinc
          : zinc // ignore: cast_nullable_to_non_nullable
              as double,
      retinol: null == retinol
          ? _self.retinol
          : retinol // ignore: cast_nullable_to_non_nullable
              as double,
      vitaminB1: null == vitaminB1
          ? _self.vitaminB1
          : vitaminB1 // ignore: cast_nullable_to_non_nullable
              as double,
      vitaminB2: null == vitaminB2
          ? _self.vitaminB2
          : vitaminB2 // ignore: cast_nullable_to_non_nullable
              as double,
      vitaminC: null == vitaminC
          ? _self.vitaminC
          : vitaminC // ignore: cast_nullable_to_non_nullable
              as double,
      dietaryFiber: null == dietaryFiber
          ? _self.dietaryFiber
          : dietaryFiber // ignore: cast_nullable_to_non_nullable
              as double,
      salt: null == salt
          ? _self.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NutrientsModel extends NutrientsModel with DiagnosticableTreeMixin {
  const _NutrientsModel(
      {this.energy = 0.0,
      this.protein = 0.0,
      this.lipid = 0.0,
      this.carbohydrate = 0.0,
      this.sodium = 0.0,
      this.calcium = 0.0,
      this.magnesium = 0.0,
      this.iron = 0.0,
      this.zinc = 0.0,
      this.retinol = 0.0,
      this.vitaminB1 = 0.0,
      this.vitaminB2 = 0.0,
      this.vitaminC = 0.0,
      this.dietaryFiber = 0.0,
      this.salt = 0.0})
      : super._();
  factory _NutrientsModel.fromJson(Map<String, dynamic> json) =>
      _$NutrientsModelFromJson(json);

  /// エネルギー
  @override
  @JsonKey()
  final double energy;

  /// タンパク質
  @override
  @JsonKey()
  final double protein;

  /// 脂質
  @override
  @JsonKey()
  final double lipid;

  /// 炭水化物
  @override
  @JsonKey()
  final double carbohydrate;

  /// ナトリウム
  @override
  @JsonKey()
  final double sodium;

  /// カルシウム
  @override
  @JsonKey()
  final double calcium;

  /// マグネシウム
  @override
  @JsonKey()
  final double magnesium;

  /// 鉄分
  @override
  @JsonKey()
  final double iron;

  /// 亜鉛
  @override
  @JsonKey()
  final double zinc;

  /// レチノール活性当量(ビタミンA)
  @override
  @JsonKey()
  final double retinol;

  /// ビタミンB1
  @override
  @JsonKey()
  final double vitaminB1;

  /// ビタミンB2
  @override
  @JsonKey()
  final double vitaminB2;

  /// ビタミンC
  @override
  @JsonKey()
  final double vitaminC;

  /// 食物繊維
  @override
  @JsonKey()
  final double dietaryFiber;

  /// 食塩相当量
  @override
  @JsonKey()
  final double salt;

  /// Create a copy of NutrientsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NutrientsModelCopyWith<_NutrientsModel> get copyWith =>
      __$NutrientsModelCopyWithImpl<_NutrientsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NutrientsModelToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'NutrientsModel'))
      ..add(DiagnosticsProperty('energy', energy))
      ..add(DiagnosticsProperty('protein', protein))
      ..add(DiagnosticsProperty('lipid', lipid))
      ..add(DiagnosticsProperty('carbohydrate', carbohydrate))
      ..add(DiagnosticsProperty('sodium', sodium))
      ..add(DiagnosticsProperty('calcium', calcium))
      ..add(DiagnosticsProperty('magnesium', magnesium))
      ..add(DiagnosticsProperty('iron', iron))
      ..add(DiagnosticsProperty('zinc', zinc))
      ..add(DiagnosticsProperty('retinol', retinol))
      ..add(DiagnosticsProperty('vitaminB1', vitaminB1))
      ..add(DiagnosticsProperty('vitaminB2', vitaminB2))
      ..add(DiagnosticsProperty('vitaminC', vitaminC))
      ..add(DiagnosticsProperty('dietaryFiber', dietaryFiber))
      ..add(DiagnosticsProperty('salt', salt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NutrientsModel &&
            (identical(other.energy, energy) || other.energy == energy) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.lipid, lipid) || other.lipid == lipid) &&
            (identical(other.carbohydrate, carbohydrate) ||
                other.carbohydrate == carbohydrate) &&
            (identical(other.sodium, sodium) || other.sodium == sodium) &&
            (identical(other.calcium, calcium) || other.calcium == calcium) &&
            (identical(other.magnesium, magnesium) ||
                other.magnesium == magnesium) &&
            (identical(other.iron, iron) || other.iron == iron) &&
            (identical(other.zinc, zinc) || other.zinc == zinc) &&
            (identical(other.retinol, retinol) || other.retinol == retinol) &&
            (identical(other.vitaminB1, vitaminB1) ||
                other.vitaminB1 == vitaminB1) &&
            (identical(other.vitaminB2, vitaminB2) ||
                other.vitaminB2 == vitaminB2) &&
            (identical(other.vitaminC, vitaminC) ||
                other.vitaminC == vitaminC) &&
            (identical(other.dietaryFiber, dietaryFiber) ||
                other.dietaryFiber == dietaryFiber) &&
            (identical(other.salt, salt) || other.salt == salt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      energy,
      protein,
      lipid,
      carbohydrate,
      sodium,
      calcium,
      magnesium,
      iron,
      zinc,
      retinol,
      vitaminB1,
      vitaminB2,
      vitaminC,
      dietaryFiber,
      salt);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NutrientsModel(energy: $energy, protein: $protein, lipid: $lipid, carbohydrate: $carbohydrate, sodium: $sodium, calcium: $calcium, magnesium: $magnesium, iron: $iron, zinc: $zinc, retinol: $retinol, vitaminB1: $vitaminB1, vitaminB2: $vitaminB2, vitaminC: $vitaminC, dietaryFiber: $dietaryFiber, salt: $salt)';
  }
}

/// @nodoc
abstract mixin class _$NutrientsModelCopyWith<$Res>
    implements $NutrientsModelCopyWith<$Res> {
  factory _$NutrientsModelCopyWith(
          _NutrientsModel value, $Res Function(_NutrientsModel) _then) =
      __$NutrientsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double energy,
      double protein,
      double lipid,
      double carbohydrate,
      double sodium,
      double calcium,
      double magnesium,
      double iron,
      double zinc,
      double retinol,
      double vitaminB1,
      double vitaminB2,
      double vitaminC,
      double dietaryFiber,
      double salt});
}

/// @nodoc
class __$NutrientsModelCopyWithImpl<$Res>
    implements _$NutrientsModelCopyWith<$Res> {
  __$NutrientsModelCopyWithImpl(this._self, this._then);

  final _NutrientsModel _self;
  final $Res Function(_NutrientsModel) _then;

  /// Create a copy of NutrientsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? energy = null,
    Object? protein = null,
    Object? lipid = null,
    Object? carbohydrate = null,
    Object? sodium = null,
    Object? calcium = null,
    Object? magnesium = null,
    Object? iron = null,
    Object? zinc = null,
    Object? retinol = null,
    Object? vitaminB1 = null,
    Object? vitaminB2 = null,
    Object? vitaminC = null,
    Object? dietaryFiber = null,
    Object? salt = null,
  }) {
    return _then(_NutrientsModel(
      energy: null == energy
          ? _self.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _self.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      lipid: null == lipid
          ? _self.lipid
          : lipid // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrate: null == carbohydrate
          ? _self.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as double,
      sodium: null == sodium
          ? _self.sodium
          : sodium // ignore: cast_nullable_to_non_nullable
              as double,
      calcium: null == calcium
          ? _self.calcium
          : calcium // ignore: cast_nullable_to_non_nullable
              as double,
      magnesium: null == magnesium
          ? _self.magnesium
          : magnesium // ignore: cast_nullable_to_non_nullable
              as double,
      iron: null == iron
          ? _self.iron
          : iron // ignore: cast_nullable_to_non_nullable
              as double,
      zinc: null == zinc
          ? _self.zinc
          : zinc // ignore: cast_nullable_to_non_nullable
              as double,
      retinol: null == retinol
          ? _self.retinol
          : retinol // ignore: cast_nullable_to_non_nullable
              as double,
      vitaminB1: null == vitaminB1
          ? _self.vitaminB1
          : vitaminB1 // ignore: cast_nullable_to_non_nullable
              as double,
      vitaminB2: null == vitaminB2
          ? _self.vitaminB2
          : vitaminB2 // ignore: cast_nullable_to_non_nullable
              as double,
      vitaminC: null == vitaminC
          ? _self.vitaminC
          : vitaminC // ignore: cast_nullable_to_non_nullable
              as double,
      dietaryFiber: null == dietaryFiber
          ? _self.dietaryFiber
          : dietaryFiber // ignore: cast_nullable_to_non_nullable
              as double,
      salt: null == salt
          ? _self.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
