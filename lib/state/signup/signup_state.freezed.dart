// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupState implements DiagnosticableTreeMixin {

 String? get lastName; String? get firstName; int? get schoolId; SchoolModel? get school; int? get schoolYear; String get schoolTrailing; String get schoolYearTrailing; List<SchoolModel> get schools; List<String> get schoolYears; String? get nameErrorState; String? get schoolErrorState; bool get authorized;
/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupStateCopyWith<SignupState> get copyWith => _$SignupStateCopyWithImpl<SignupState>(this as SignupState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupState'))
    ..add(DiagnosticsProperty('lastName', lastName))..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('schoolId', schoolId))..add(DiagnosticsProperty('school', school))..add(DiagnosticsProperty('schoolYear', schoolYear))..add(DiagnosticsProperty('schoolTrailing', schoolTrailing))..add(DiagnosticsProperty('schoolYearTrailing', schoolYearTrailing))..add(DiagnosticsProperty('schools', schools))..add(DiagnosticsProperty('schoolYears', schoolYears))..add(DiagnosticsProperty('nameErrorState', nameErrorState))..add(DiagnosticsProperty('schoolErrorState', schoolErrorState))..add(DiagnosticsProperty('authorized', authorized));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.school, school) || other.school == school)&&(identical(other.schoolYear, schoolYear) || other.schoolYear == schoolYear)&&(identical(other.schoolTrailing, schoolTrailing) || other.schoolTrailing == schoolTrailing)&&(identical(other.schoolYearTrailing, schoolYearTrailing) || other.schoolYearTrailing == schoolYearTrailing)&&const DeepCollectionEquality().equals(other.schools, schools)&&const DeepCollectionEquality().equals(other.schoolYears, schoolYears)&&(identical(other.nameErrorState, nameErrorState) || other.nameErrorState == nameErrorState)&&(identical(other.schoolErrorState, schoolErrorState) || other.schoolErrorState == schoolErrorState)&&(identical(other.authorized, authorized) || other.authorized == authorized));
}


@override
int get hashCode => Object.hash(runtimeType,lastName,firstName,schoolId,school,schoolYear,schoolTrailing,schoolYearTrailing,const DeepCollectionEquality().hash(schools),const DeepCollectionEquality().hash(schoolYears),nameErrorState,schoolErrorState,authorized);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupState(lastName: $lastName, firstName: $firstName, schoolId: $schoolId, school: $school, schoolYear: $schoolYear, schoolTrailing: $schoolTrailing, schoolYearTrailing: $schoolYearTrailing, schools: $schools, schoolYears: $schoolYears, nameErrorState: $nameErrorState, schoolErrorState: $schoolErrorState, authorized: $authorized)';
}


}

/// @nodoc
abstract mixin class $SignupStateCopyWith<$Res>  {
  factory $SignupStateCopyWith(SignupState value, $Res Function(SignupState) _then) = _$SignupStateCopyWithImpl;
@useResult
$Res call({
 String? lastName, String? firstName, int? schoolId, SchoolModel? school, int? schoolYear, String schoolTrailing, String schoolYearTrailing, List<SchoolModel> schools, List<String> schoolYears, String? nameErrorState, String? schoolErrorState, bool authorized
});


$SchoolModelCopyWith<$Res>? get school;

}
/// @nodoc
class _$SignupStateCopyWithImpl<$Res>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._self, this._then);

  final SignupState _self;
  final $Res Function(SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lastName = freezed,Object? firstName = freezed,Object? schoolId = freezed,Object? school = freezed,Object? schoolYear = freezed,Object? schoolTrailing = null,Object? schoolYearTrailing = null,Object? schools = null,Object? schoolYears = null,Object? nameErrorState = freezed,Object? schoolErrorState = freezed,Object? authorized = null,}) {
  return _then(_self.copyWith(
lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as SchoolModel?,schoolYear: freezed == schoolYear ? _self.schoolYear : schoolYear // ignore: cast_nullable_to_non_nullable
as int?,schoolTrailing: null == schoolTrailing ? _self.schoolTrailing : schoolTrailing // ignore: cast_nullable_to_non_nullable
as String,schoolYearTrailing: null == schoolYearTrailing ? _self.schoolYearTrailing : schoolYearTrailing // ignore: cast_nullable_to_non_nullable
as String,schools: null == schools ? _self.schools : schools // ignore: cast_nullable_to_non_nullable
as List<SchoolModel>,schoolYears: null == schoolYears ? _self.schoolYears : schoolYears // ignore: cast_nullable_to_non_nullable
as List<String>,nameErrorState: freezed == nameErrorState ? _self.nameErrorState : nameErrorState // ignore: cast_nullable_to_non_nullable
as String?,schoolErrorState: freezed == schoolErrorState ? _self.schoolErrorState : schoolErrorState // ignore: cast_nullable_to_non_nullable
as String?,authorized: null == authorized ? _self.authorized : authorized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolModelCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $SchoolModelCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}


/// @nodoc


class _SignupState with DiagnosticableTreeMixin implements SignupState {
  const _SignupState({this.lastName, this.firstName, this.schoolId, this.school, this.schoolYear, this.schoolTrailing = '学校を選択', this.schoolYearTrailing = '学年を選択', final  List<SchoolModel> schools = const <SchoolModel>[], final  List<String> schoolYears = const <String>['1年生', '2年生', '3年生'], this.nameErrorState, this.schoolErrorState, this.authorized = false}): _schools = schools,_schoolYears = schoolYears;
  

@override final  String? lastName;
@override final  String? firstName;
@override final  int? schoolId;
@override final  SchoolModel? school;
@override final  int? schoolYear;
@override@JsonKey() final  String schoolTrailing;
@override@JsonKey() final  String schoolYearTrailing;
 final  List<SchoolModel> _schools;
@override@JsonKey() List<SchoolModel> get schools {
  if (_schools is EqualUnmodifiableListView) return _schools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schools);
}

 final  List<String> _schoolYears;
@override@JsonKey() List<String> get schoolYears {
  if (_schoolYears is EqualUnmodifiableListView) return _schoolYears;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schoolYears);
}

@override final  String? nameErrorState;
@override final  String? schoolErrorState;
@override@JsonKey() final  bool authorized;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupStateCopyWith<_SignupState> get copyWith => __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SignupState'))
    ..add(DiagnosticsProperty('lastName', lastName))..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('schoolId', schoolId))..add(DiagnosticsProperty('school', school))..add(DiagnosticsProperty('schoolYear', schoolYear))..add(DiagnosticsProperty('schoolTrailing', schoolTrailing))..add(DiagnosticsProperty('schoolYearTrailing', schoolYearTrailing))..add(DiagnosticsProperty('schools', schools))..add(DiagnosticsProperty('schoolYears', schoolYears))..add(DiagnosticsProperty('nameErrorState', nameErrorState))..add(DiagnosticsProperty('schoolErrorState', schoolErrorState))..add(DiagnosticsProperty('authorized', authorized));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupState&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.schoolId, schoolId) || other.schoolId == schoolId)&&(identical(other.school, school) || other.school == school)&&(identical(other.schoolYear, schoolYear) || other.schoolYear == schoolYear)&&(identical(other.schoolTrailing, schoolTrailing) || other.schoolTrailing == schoolTrailing)&&(identical(other.schoolYearTrailing, schoolYearTrailing) || other.schoolYearTrailing == schoolYearTrailing)&&const DeepCollectionEquality().equals(other._schools, _schools)&&const DeepCollectionEquality().equals(other._schoolYears, _schoolYears)&&(identical(other.nameErrorState, nameErrorState) || other.nameErrorState == nameErrorState)&&(identical(other.schoolErrorState, schoolErrorState) || other.schoolErrorState == schoolErrorState)&&(identical(other.authorized, authorized) || other.authorized == authorized));
}


@override
int get hashCode => Object.hash(runtimeType,lastName,firstName,schoolId,school,schoolYear,schoolTrailing,schoolYearTrailing,const DeepCollectionEquality().hash(_schools),const DeepCollectionEquality().hash(_schoolYears),nameErrorState,schoolErrorState,authorized);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SignupState(lastName: $lastName, firstName: $firstName, schoolId: $schoolId, school: $school, schoolYear: $schoolYear, schoolTrailing: $schoolTrailing, schoolYearTrailing: $schoolYearTrailing, schools: $schools, schoolYears: $schoolYears, nameErrorState: $nameErrorState, schoolErrorState: $schoolErrorState, authorized: $authorized)';
}


}

/// @nodoc
abstract mixin class _$SignupStateCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(_SignupState value, $Res Function(_SignupState) _then) = __$SignupStateCopyWithImpl;
@override @useResult
$Res call({
 String? lastName, String? firstName, int? schoolId, SchoolModel? school, int? schoolYear, String schoolTrailing, String schoolYearTrailing, List<SchoolModel> schools, List<String> schoolYears, String? nameErrorState, String? schoolErrorState, bool authorized
});


@override $SchoolModelCopyWith<$Res>? get school;

}
/// @nodoc
class __$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(this._self, this._then);

  final _SignupState _self;
  final $Res Function(_SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lastName = freezed,Object? firstName = freezed,Object? schoolId = freezed,Object? school = freezed,Object? schoolYear = freezed,Object? schoolTrailing = null,Object? schoolYearTrailing = null,Object? schools = null,Object? schoolYears = null,Object? nameErrorState = freezed,Object? schoolErrorState = freezed,Object? authorized = null,}) {
  return _then(_SignupState(
lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,schoolId: freezed == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as int?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as SchoolModel?,schoolYear: freezed == schoolYear ? _self.schoolYear : schoolYear // ignore: cast_nullable_to_non_nullable
as int?,schoolTrailing: null == schoolTrailing ? _self.schoolTrailing : schoolTrailing // ignore: cast_nullable_to_non_nullable
as String,schoolYearTrailing: null == schoolYearTrailing ? _self.schoolYearTrailing : schoolYearTrailing // ignore: cast_nullable_to_non_nullable
as String,schools: null == schools ? _self._schools : schools // ignore: cast_nullable_to_non_nullable
as List<SchoolModel>,schoolYears: null == schoolYears ? _self._schoolYears : schoolYears // ignore: cast_nullable_to_non_nullable
as List<String>,nameErrorState: freezed == nameErrorState ? _self.nameErrorState : nameErrorState // ignore: cast_nullable_to_non_nullable
as String?,schoolErrorState: freezed == schoolErrorState ? _self.schoolErrorState : schoolErrorState // ignore: cast_nullable_to_non_nullable
as String?,authorized: null == authorized ? _self.authorized : authorized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolModelCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $SchoolModelCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}

// dart format on
