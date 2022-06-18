// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? nameErrorState,
            String? schoolErrorState)
        data,
    required TResult Function() load,
    required TResult Function(Exception error, SignupStateData cache) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult Function()? load,
    TResult Function(Exception error, SignupStateData cache)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
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
    TResult Function(SignupStateData value)? data,
    TResult Function(SignupStateLoad value)? load,
    TResult Function(SignupStateError value)? error,
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
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;
}

/// @nodoc
abstract class _$$SignupStateDataCopyWith<$Res> {
  factory _$$SignupStateDataCopyWith(
          _$SignupStateData value, $Res Function(_$SignupStateData) then) =
      __$$SignupStateDataCopyWithImpl<$Res>;
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
class __$$SignupStateDataCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res>
    implements _$$SignupStateDataCopyWith<$Res> {
  __$$SignupStateDataCopyWithImpl(
      _$SignupStateData _value, $Res Function(_$SignupStateData) _then)
      : super(_value, (v) => _then(v as _$SignupStateData));

  @override
  _$SignupStateData get _value => super._value as _$SignupStateData;

  @override
  $Res call({
    Object? name = freezed,
    Object? schoolId = freezed,
    Object? schoolYear = freezed,
    Object? schoolTrailing = freezed,
    Object? schoolYearTrailing = freezed,
    Object? schools = freezed,
    Object? schoolYears = freezed,
    Object? nameErrorState = freezed,
    Object? schoolErrorState = freezed,
  }) {
    return _then(_$SignupStateData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: schoolId == freezed
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolYear: schoolYear == freezed
          ? _value.schoolYear
          : schoolYear // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolTrailing: schoolTrailing == freezed
          ? _value.schoolTrailing
          : schoolTrailing // ignore: cast_nullable_to_non_nullable
              as String,
      schoolYearTrailing: schoolYearTrailing == freezed
          ? _value.schoolYearTrailing
          : schoolYearTrailing // ignore: cast_nullable_to_non_nullable
              as String,
      schools: schools == freezed
          ? _value._schools
          : schools // ignore: cast_nullable_to_non_nullable
              as List<SchoolModel>,
      schoolYears: schoolYears == freezed
          ? _value._schoolYears
          : schoolYears // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nameErrorState: nameErrorState == freezed
          ? _value.nameErrorState
          : nameErrorState // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolErrorState: schoolErrorState == freezed
          ? _value.schoolErrorState
          : schoolErrorState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignupStateData
    with DiagnosticableTreeMixin
    implements SignupStateData {
  const _$SignupStateData(
      {this.name,
      this.schoolId,
      this.schoolYear,
      required this.schoolTrailing,
      required this.schoolYearTrailing,
      required final List<SchoolModel> schools,
      required final List<String> schoolYears,
      this.nameErrorState,
      this.schoolErrorState})
      : _schools = schools,
        _schoolYears = schoolYears;

  @override
  final String? name;
  @override
  final int? schoolId;
  @override
  final int? schoolYear;
  @override
  final String schoolTrailing;
  @override
  final String schoolYearTrailing;
  final List<SchoolModel> _schools;
  @override
  List<SchoolModel> get schools {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schools);
  }

  final List<String> _schoolYears;
  @override
  List<String> get schoolYears {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schoolYears);
  }

  @override
  final String? nameErrorState;
  @override
  final String? schoolErrorState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignupState.data(name: $name, schoolId: $schoolId, schoolYear: $schoolYear, schoolTrailing: $schoolTrailing, schoolYearTrailing: $schoolYearTrailing, schools: $schools, schoolYears: $schoolYears, nameErrorState: $nameErrorState, schoolErrorState: $schoolErrorState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignupState.data'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('schoolId', schoolId))
      ..add(DiagnosticsProperty('schoolYear', schoolYear))
      ..add(DiagnosticsProperty('schoolTrailing', schoolTrailing))
      ..add(DiagnosticsProperty('schoolYearTrailing', schoolYearTrailing))
      ..add(DiagnosticsProperty('schools', schools))
      ..add(DiagnosticsProperty('schoolYears', schoolYears))
      ..add(DiagnosticsProperty('nameErrorState', nameErrorState))
      ..add(DiagnosticsProperty('schoolErrorState', schoolErrorState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateData &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.schoolId, schoolId) &&
            const DeepCollectionEquality()
                .equals(other.schoolYear, schoolYear) &&
            const DeepCollectionEquality()
                .equals(other.schoolTrailing, schoolTrailing) &&
            const DeepCollectionEquality()
                .equals(other.schoolYearTrailing, schoolYearTrailing) &&
            const DeepCollectionEquality().equals(other._schools, _schools) &&
            const DeepCollectionEquality()
                .equals(other._schoolYears, _schoolYears) &&
            const DeepCollectionEquality()
                .equals(other.nameErrorState, nameErrorState) &&
            const DeepCollectionEquality()
                .equals(other.schoolErrorState, schoolErrorState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(schoolId),
      const DeepCollectionEquality().hash(schoolYear),
      const DeepCollectionEquality().hash(schoolTrailing),
      const DeepCollectionEquality().hash(schoolYearTrailing),
      const DeepCollectionEquality().hash(_schools),
      const DeepCollectionEquality().hash(_schoolYears),
      const DeepCollectionEquality().hash(nameErrorState),
      const DeepCollectionEquality().hash(schoolErrorState));

  @JsonKey(ignore: true)
  @override
  _$$SignupStateDataCopyWith<_$SignupStateData> get copyWith =>
      __$$SignupStateDataCopyWithImpl<_$SignupStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? nameErrorState,
            String? schoolErrorState)
        data,
    required TResult Function() load,
    required TResult Function(Exception error, SignupStateData cache) error,
  }) {
    return data(name, schoolId, schoolYear, schoolTrailing, schoolYearTrailing,
        schools, schoolYears, nameErrorState, schoolErrorState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult Function()? load,
    TResult Function(Exception error, SignupStateData cache)? error,
  }) {
    return data?.call(
        name,
        schoolId,
        schoolYear,
        schoolTrailing,
        schoolYearTrailing,
        schools,
        schoolYears,
        nameErrorState,
        schoolErrorState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult Function()? load,
    TResult Function(Exception error, SignupStateData cache)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          name,
          schoolId,
          schoolYear,
          schoolTrailing,
          schoolYearTrailing,
          schools,
          schoolYears,
          nameErrorState,
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
    TResult Function(SignupStateData value)? data,
    TResult Function(SignupStateLoad value)? load,
    TResult Function(SignupStateError value)? error,
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
      {final String? name,
      final int? schoolId,
      final int? schoolYear,
      required final String schoolTrailing,
      required final String schoolYearTrailing,
      required final List<SchoolModel> schools,
      required final List<String> schoolYears,
      final String? nameErrorState,
      final String? schoolErrorState}) = _$SignupStateData;

  String? get name => throw _privateConstructorUsedError;
  int? get schoolId => throw _privateConstructorUsedError;
  int? get schoolYear => throw _privateConstructorUsedError;
  String get schoolTrailing => throw _privateConstructorUsedError;
  String get schoolYearTrailing => throw _privateConstructorUsedError;
  List<SchoolModel> get schools => throw _privateConstructorUsedError;
  List<String> get schoolYears => throw _privateConstructorUsedError;
  String? get nameErrorState => throw _privateConstructorUsedError;
  String? get schoolErrorState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SignupStateDataCopyWith<_$SignupStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupStateLoadCopyWith<$Res> {
  factory _$$SignupStateLoadCopyWith(
          _$SignupStateLoad value, $Res Function(_$SignupStateLoad) then) =
      __$$SignupStateLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupStateLoadCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res>
    implements _$$SignupStateLoadCopyWith<$Res> {
  __$$SignupStateLoadCopyWithImpl(
      _$SignupStateLoad _value, $Res Function(_$SignupStateLoad) _then)
      : super(_value, (v) => _then(v as _$SignupStateLoad));

  @override
  _$SignupStateLoad get _value => super._value as _$SignupStateLoad;
}

/// @nodoc

class _$SignupStateLoad
    with DiagnosticableTreeMixin
    implements SignupStateLoad {
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupStateLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
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
    TResult Function(
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult Function()? load,
    TResult Function(Exception error, SignupStateData cache)? error,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
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
    TResult Function(SignupStateData value)? data,
    TResult Function(SignupStateLoad value)? load,
    TResult Function(SignupStateError value)? error,
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
  factory _$$SignupStateErrorCopyWith(
          _$SignupStateError value, $Res Function(_$SignupStateError) then) =
      __$$SignupStateErrorCopyWithImpl<$Res>;
  $Res call({Exception error, SignupStateData cache});
}

/// @nodoc
class __$$SignupStateErrorCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res>
    implements _$$SignupStateErrorCopyWith<$Res> {
  __$$SignupStateErrorCopyWithImpl(
      _$SignupStateError _value, $Res Function(_$SignupStateError) _then)
      : super(_value, (v) => _then(v as _$SignupStateError));

  @override
  _$SignupStateError get _value => super._value as _$SignupStateError;

  @override
  $Res call({
    Object? error = freezed,
    Object? cache = freezed,
  }) {
    return _then(_$SignupStateError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
      cache: cache == freezed
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as SignupStateData,
    ));
  }
}

/// @nodoc

class _$SignupStateError
    with DiagnosticableTreeMixin
    implements SignupStateError {
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
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.cache, cache));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(cache));

  @JsonKey(ignore: true)
  @override
  _$$SignupStateErrorCopyWith<_$SignupStateError> get copyWith =>
      __$$SignupStateErrorCopyWithImpl<_$SignupStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
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
    TResult Function(
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
            String? nameErrorState,
            String? schoolErrorState)?
        data,
    TResult Function()? load,
    TResult Function(Exception error, SignupStateData cache)? error,
  }) {
    return error?.call(this.error, cache);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? name,
            int? schoolId,
            int? schoolYear,
            String schoolTrailing,
            String schoolYearTrailing,
            List<SchoolModel> schools,
            List<String> schoolYears,
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
    TResult Function(SignupStateData value)? data,
    TResult Function(SignupStateLoad value)? load,
    TResult Function(SignupStateError value)? error,
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
  const factory SignupStateError(
      {required final Exception error,
      required final SignupStateData cache}) = _$SignupStateError;

  Exception get error => throw _privateConstructorUsedError;
  SignupStateData get cache => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SignupStateErrorCopyWith<_$SignupStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
