// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'origin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OriginState implements DiagnosticableTreeMixin {

 List<OriginModel> get origins; OriginModel get selectedOrigin;
/// Create a copy of OriginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OriginStateCopyWith<OriginState> get copyWith => _$OriginStateCopyWithImpl<OriginState>(this as OriginState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OriginState'))
    ..add(DiagnosticsProperty('origins', origins))..add(DiagnosticsProperty('selectedOrigin', selectedOrigin));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OriginState&&const DeepCollectionEquality().equals(other.origins, origins)&&(identical(other.selectedOrigin, selectedOrigin) || other.selectedOrigin == selectedOrigin));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(origins),selectedOrigin);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OriginState(origins: $origins, selectedOrigin: $selectedOrigin)';
}


}

/// @nodoc
abstract mixin class $OriginStateCopyWith<$Res>  {
  factory $OriginStateCopyWith(OriginState value, $Res Function(OriginState) _then) = _$OriginStateCopyWithImpl;
@useResult
$Res call({
 List<OriginModel> origins, OriginModel selectedOrigin
});


$OriginModelCopyWith<$Res> get selectedOrigin;

}
/// @nodoc
class _$OriginStateCopyWithImpl<$Res>
    implements $OriginStateCopyWith<$Res> {
  _$OriginStateCopyWithImpl(this._self, this._then);

  final OriginState _self;
  final $Res Function(OriginState) _then;

/// Create a copy of OriginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? origins = null,Object? selectedOrigin = null,}) {
  return _then(_self.copyWith(
origins: null == origins ? _self.origins : origins // ignore: cast_nullable_to_non_nullable
as List<OriginModel>,selectedOrigin: null == selectedOrigin ? _self.selectedOrigin : selectedOrigin // ignore: cast_nullable_to_non_nullable
as OriginModel,
  ));
}
/// Create a copy of OriginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginModelCopyWith<$Res> get selectedOrigin {
  
  return $OriginModelCopyWith<$Res>(_self.selectedOrigin, (value) {
    return _then(_self.copyWith(selectedOrigin: value));
  });
}
}


/// Adds pattern-matching-related methods to [OriginState].
extension OriginStatePatterns on OriginState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OriginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OriginState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OriginState value)  $default,){
final _that = this;
switch (_that) {
case _OriginState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OriginState value)?  $default,){
final _that = this;
switch (_that) {
case _OriginState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OriginModel> origins,  OriginModel selectedOrigin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OriginState() when $default != null:
return $default(_that.origins,_that.selectedOrigin);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OriginModel> origins,  OriginModel selectedOrigin)  $default,) {final _that = this;
switch (_that) {
case _OriginState():
return $default(_that.origins,_that.selectedOrigin);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OriginModel> origins,  OriginModel selectedOrigin)?  $default,) {final _that = this;
switch (_that) {
case _OriginState() when $default != null:
return $default(_that.origins,_that.selectedOrigin);case _:
  return null;

}
}

}

/// @nodoc


class _OriginState with DiagnosticableTreeMixin implements OriginState {
  const _OriginState({required final  List<OriginModel> origins, required this.selectedOrigin}): _origins = origins;
  

 final  List<OriginModel> _origins;
@override List<OriginModel> get origins {
  if (_origins is EqualUnmodifiableListView) return _origins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_origins);
}

@override final  OriginModel selectedOrigin;

/// Create a copy of OriginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OriginStateCopyWith<_OriginState> get copyWith => __$OriginStateCopyWithImpl<_OriginState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OriginState'))
    ..add(DiagnosticsProperty('origins', origins))..add(DiagnosticsProperty('selectedOrigin', selectedOrigin));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OriginState&&const DeepCollectionEquality().equals(other._origins, _origins)&&(identical(other.selectedOrigin, selectedOrigin) || other.selectedOrigin == selectedOrigin));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_origins),selectedOrigin);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OriginState(origins: $origins, selectedOrigin: $selectedOrigin)';
}


}

/// @nodoc
abstract mixin class _$OriginStateCopyWith<$Res> implements $OriginStateCopyWith<$Res> {
  factory _$OriginStateCopyWith(_OriginState value, $Res Function(_OriginState) _then) = __$OriginStateCopyWithImpl;
@override @useResult
$Res call({
 List<OriginModel> origins, OriginModel selectedOrigin
});


@override $OriginModelCopyWith<$Res> get selectedOrigin;

}
/// @nodoc
class __$OriginStateCopyWithImpl<$Res>
    implements _$OriginStateCopyWith<$Res> {
  __$OriginStateCopyWithImpl(this._self, this._then);

  final _OriginState _self;
  final $Res Function(_OriginState) _then;

/// Create a copy of OriginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? origins = null,Object? selectedOrigin = null,}) {
  return _then(_OriginState(
origins: null == origins ? _self._origins : origins // ignore: cast_nullable_to_non_nullable
as List<OriginModel>,selectedOrigin: null == selectedOrigin ? _self.selectedOrigin : selectedOrigin // ignore: cast_nullable_to_non_nullable
as OriginModel,
  ));
}

/// Create a copy of OriginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginModelCopyWith<$Res> get selectedOrigin {
  
  return $OriginModelCopyWith<$Res>(_self.selectedOrigin, (value) {
    return _then(_self.copyWith(selectedOrigin: value));
  });
}
}

// dart format on
