// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)
        data,
    required TResult Function() load,
    required TResult Function(Exception error, SignupStateData cache) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult? Function()? load,
    TResult? Function(Exception error, SignupStateData cache)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult Function()? load,
    TResult Function(Exception error, SignupStateData cache)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupStateData value) data,
    required TResult Function(SignupStateLoad value) load,
    required TResult Function(SignupStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupStateData value)? data,
    TResult? Function(SignupStateLoad value)? load,
    TResult? Function(SignupStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupStateData value)? data,
    TResult Function(SignupStateLoad value)? load,
    TResult Function(SignupStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call(
      {String schoolTrailing,
      String schoolYearTrailing,
      List<SchoolModel> schools,
      List<String> schoolYears,
      String? name,
      int? schoolId,
      int? schoolYear,
      String? nameErrorState,
      String? schoolErrorState});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? schoolId = freezed,
    Object? schoolYear = freezed,
    Object? schoolTrailing = null,
    Object? schoolYearTrailing = null,
    Object? schools = null,
    Object? schoolYears = null,
    Object? nameErrorState = freezed,
    Object? schoolErrorState = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolYear: freezed == schoolYear
          ? _value.schoolYear
          : schoolYear // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolTrailing: null == schoolTrailing
          ? _value.schoolTrailing
          : schoolTrailing // ignore: cast_nullable_to_non_nullable
              as String,
      schoolYearTrailing: null == schoolYearTrailing
          ? _value.schoolYearTrailing
          : schoolYearTrailing // ignore: cast_nullable_to_non_nullable
              as String,
      schools: null == schools
          ? _value.schools
          : schools // ignore: cast_nullable_to_non_nullable
              as List<SchoolModel>,
      schoolYears: null == schoolYears
          ? _value.schoolYears
          : schoolYears // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nameErrorState: freezed == nameErrorState
          ? _value.nameErrorState
          : nameErrorState // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolErrorState: freezed == schoolErrorState
          ? _value.schoolErrorState
          : schoolErrorState // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupStateImplCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory _$$SignupStateImplCopyWith(_$SignupStateImpl value, $Res Function(_$SignupStateImpl) then) =
      __$$SignupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? schoolId,
      int? schoolYear,
      String schoolTrailing,
      String schoolYearTrailing,
      List<SchoolModel> schools,
      List<String> schoolYears,
      String? nameErrorState,
      String? schoolErrorState});
}

/// @nodoc
class __$$SignupStateImplCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res, _$SignupStateImpl>
    implements _$$SignupStateImplCopyWith<$Res> {
  __$$SignupStateImplCopyWithImpl(_$SignupStateImpl _value, $Res Function(_$SignupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolTrailing = null,
    Object? schoolYearTrailing = null,
    Object? schools = null,
    Object? schoolYears = null,
    Object? name = freezed,
    Object? schoolId = freezed,
    Object? schoolYear = freezed,
    Object? nameErrorState = freezed,
    Object? schoolErrorState = freezed,
  }) {
    return _then(_$SignupStateData(
      schoolTrailing: null == schoolTrailing
          ? _value.schoolTrailing
          : schoolTrailing // ignore: cast_nullable_to_non_nullable
              as String,
      schoolYearTrailing: null == schoolYearTrailing
          ? _value.schoolYearTrailing
          : schoolYearTrailing // ignore: cast_nullable_to_non_nullable
              as String,
      schools: null == schools
          ? _value._schools
          : schools // ignore: cast_nullable_to_non_nullable
              as List<SchoolModel>,
      schoolYears: null == schoolYears
          ? _value._schoolYears
          : schoolYears // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolYear: freezed == schoolYear
          ? _value.schoolYear
          : schoolYear // ignore: cast_nullable_to_non_nullable
              as int?,
      nameErrorState: freezed == nameErrorState
          ? _value.nameErrorState
          : nameErrorState // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolErrorState: freezed == schoolErrorState
          ? _value.schoolErrorState
          : schoolErrorState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignupStateData with DiagnosticableTreeMixin implements SignupStateData {
  const _$SignupStateData(
      {required this.schoolTrailing,
      required this.schoolYearTrailing,
      required final List<SchoolModel> schools,
      required final List<String> schoolYears,
      this.name,
      this.schoolId,
      this.schoolYear,
      this.nameErrorState,
      this.schoolErrorState})
      : _schools = schools,
        _schoolYears = schoolYears;

  @override
  final String schoolTrailing;
  @override
  @JsonKey()
  final String schoolYearTrailing;
  final List<SchoolModel> _schools;
  @override
  @JsonKey()
  List<SchoolModel> get schools {
    if (_schools is EqualUnmodifiableListView) return _schools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schools);
  }

  final List<String> _schoolYears;
  @override
  @JsonKey()
  List<String> get schoolYears {
    if (_schoolYears is EqualUnmodifiableListView) return _schoolYears;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schoolYears);
  }

  @override
  final String? name;
  @override
  final int? schoolId;
  @override
  final int? schoolYear;
  @override
  final String? nameErrorState;
  @override
  final String? schoolErrorState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignupState.data(schoolTrailing: $schoolTrailing, schoolYearTrailing: $schoolYearTrailing, schools: $schools, schoolYears: $schoolYears, name: $name, schoolId: $schoolId, schoolYear: $schoolYear, nameErrorState: $nameErrorState, schoolErrorState: $schoolErrorState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignupState.data'))
      ..add(DiagnosticsProperty('schoolTrailing', schoolTrailing))
      ..add(DiagnosticsProperty('schoolYearTrailing', schoolYearTrailing))
      ..add(DiagnosticsProperty('schools', schools))
      ..add(DiagnosticsProperty('schoolYears', schoolYears))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('schoolId', schoolId))
      ..add(DiagnosticsProperty('schoolYear', schoolYear))
      ..add(DiagnosticsProperty('nameErrorState', nameErrorState))
      ..add(DiagnosticsProperty('schoolErrorState', schoolErrorState));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateData &&
            (identical(other.schoolTrailing, schoolTrailing) || other.schoolTrailing == schoolTrailing) &&
            (identical(other.schoolYearTrailing, schoolYearTrailing) ||
                other.schoolYearTrailing == schoolYearTrailing) &&
            const DeepCollectionEquality().equals(other._schools, _schools) &&
            const DeepCollectionEquality().equals(other._schoolYears, _schoolYears) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.schoolId, schoolId) || other.schoolId == schoolId) &&
            (identical(other.schoolYear, schoolYear) || other.schoolYear == schoolYear) &&
            (identical(other.nameErrorState, nameErrorState) || other.nameErrorState == nameErrorState) &&
            (identical(other.schoolErrorState, schoolErrorState) || other.schoolErrorState == schoolErrorState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      schoolTrailing,
      schoolYearTrailing,
      const DeepCollectionEquality().hash(_schools),
      const DeepCollectionEquality().hash(_schoolYears),
      name,
      schoolId,
      schoolYear,
      nameErrorState,
      schoolErrorState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateDataCopyWith<_$SignupStateData> get copyWith =>
      __$$SignupStateDataCopyWithImpl<_$SignupStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)
        data,
    required TResult Function() load,
    required TResult Function(Exception error, SignupStateData cache) error,
  }) {
    return data(schoolTrailing, schoolYearTrailing, schools, schoolYears, name, schoolId, schoolYear, nameErrorState,
        schoolErrorState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult? Function()? load,
    TResult? Function(Exception error, SignupStateData cache)? error,
  }) {
    return data?.call(schoolTrailing, schoolYearTrailing, schools, schoolYears, name, schoolId, schoolYear,
        nameErrorState, schoolErrorState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult Function()? load,
    TResult Function(Exception error, SignupStateData cache)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(schoolTrailing, schoolYearTrailing, schools, schoolYears, name, schoolId, schoolYear, nameErrorState,
          schoolErrorState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupStateData value) data,
    required TResult Function(SignupStateLoad value) load,
    required TResult Function(SignupStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupStateData value)? data,
    TResult? Function(SignupStateLoad value)? load,
    TResult? Function(SignupStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupStateData value)? data,
    TResult Function(SignupStateLoad value)? load,
    TResult Function(SignupStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class SignupStateData implements SignupState {
  const factory SignupStateData(
      {required final String schoolTrailing,
      required final String schoolYearTrailing,
      required final List<SchoolModel> schools,
      required final List<String> schoolYears,
      final String? name,
      final int? schoolId,
      final int? schoolYear,
      final String? nameErrorState,
      final String? schoolErrorState}) = _$SignupStateImpl;

  String get schoolTrailing;
  @override
  String get schoolYearTrailing;
  @override
  List<SchoolModel> get schools;
  @override
  List<String> get schoolYears;
  String? get name;
  int? get schoolId;
  int? get schoolYear;
  String? get nameErrorState;
  @override
  String? get schoolErrorState;
  @override
  @JsonKey(ignore: true)
  _$$SignupStateDataCopyWith<_$SignupStateData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupStateLoadCopyWith<$Res> {
  factory _$$SignupStateLoadCopyWith(_$SignupStateLoad value, $Res Function(_$SignupStateLoad) then) =
      __$$SignupStateLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupStateLoadCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res, _$SignupStateLoad>
    implements _$$SignupStateLoadCopyWith<$Res> {
  __$$SignupStateLoadCopyWithImpl(_$SignupStateLoad _value, $Res Function(_$SignupStateLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignupStateLoad with DiagnosticableTreeMixin implements SignupStateLoad {
  const _$SignupStateLoad();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignupState.load()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignupState.load'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SignupStateLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)
        data,
    required TResult Function() load,
    required TResult Function(Exception error, SignupStateData cache) error,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult? Function()? load,
    TResult? Function(Exception error, SignupStateData cache)? error,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult Function()? load,
    TResult Function(Exception error, SignupStateData cache)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupStateData value) data,
    required TResult Function(SignupStateLoad value) load,
    required TResult Function(SignupStateError value) error,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupStateData value)? data,
    TResult? Function(SignupStateLoad value)? load,
    TResult? Function(SignupStateError value)? error,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupStateData value)? data,
    TResult Function(SignupStateLoad value)? load,
    TResult Function(SignupStateError value)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class SignupStateLoad implements SignupState {
  const factory SignupStateLoad() = _$SignupStateLoad;
}

/// @nodoc
abstract class _$$SignupStateErrorCopyWith<$Res> {
  factory _$$SignupStateErrorCopyWith(_$SignupStateError value, $Res Function(_$SignupStateError) then) =
      __$$SignupStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error, SignupStateData cache});
}

/// @nodoc
class __$$SignupStateErrorCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res, _$SignupStateError>
    implements _$$SignupStateErrorCopyWith<$Res> {
  __$$SignupStateErrorCopyWithImpl(_$SignupStateError _value, $Res Function(_$SignupStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? cache = freezed,
  }) {
    return _then(_$SignupStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
      cache: freezed == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as SignupStateData,
    ));
  }
}

/// @nodoc

class _$SignupStateError with DiagnosticableTreeMixin implements SignupStateError {
  const _$SignupStateError({required this.error, required this.cache});

  @override
  final Exception error;
  @override
  final SignupStateData cache;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignupState.error(error: $error, cache: $cache)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignupState.error'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('cache', cache));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateError &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.cache, cache));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, const DeepCollectionEquality().hash(cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateErrorCopyWith<_$SignupStateError> get copyWith =>
      __$$SignupStateErrorCopyWithImpl<_$SignupStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)
        data,
    required TResult Function() load,
    required TResult Function(Exception error, SignupStateData cache) error,
  }) {
    return error(this.error, cache);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult? Function()? load,
    TResult? Function(Exception error, SignupStateData cache)? error,
  }) {
    return error?.call(this.error, cache);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? name,
            int? schoolId,
            int? schoolYear,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult Function()? load,
    TResult Function(Exception error, SignupStateData cache)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, cache);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupStateData value) data,
    required TResult Function(SignupStateLoad value) load,
    required TResult Function(SignupStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupStateData value)? data,
    TResult? Function(SignupStateLoad value)? load,
    TResult? Function(SignupStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupStateData value)? data,
    TResult Function(SignupStateLoad value)? load,
    TResult Function(SignupStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignupStateError implements SignupState {
  const factory SignupStateError({required final Exception error, required final SignupStateData cache}) =
      _$SignupStateError;

  Exception get error;
  SignupStateData get cache;
  @JsonKey(ignore: true)
  _$$SignupStateErrorCopyWith<_$SignupStateError> get copyWith => throw _privateConstructorUsedError;
}
