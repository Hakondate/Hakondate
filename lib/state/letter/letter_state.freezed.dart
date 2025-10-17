// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'letter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LetterState implements DiagnosticableTreeMixin {

 LetterConnectionStatus get status; List<LetterMetadataModel> get letters; LetterMetadataModelData? get selectedLetter; bool get isEndListing; String? get pageToken;
/// Create a copy of LetterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LetterStateCopyWith<LetterState> get copyWith => _$LetterStateCopyWithImpl<LetterState>(this as LetterState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LetterState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('letters', letters))..add(DiagnosticsProperty('selectedLetter', selectedLetter))..add(DiagnosticsProperty('isEndListing', isEndListing))..add(DiagnosticsProperty('pageToken', pageToken));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LetterState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.letters, letters)&&const DeepCollectionEquality().equals(other.selectedLetter, selectedLetter)&&(identical(other.isEndListing, isEndListing) || other.isEndListing == isEndListing)&&(identical(other.pageToken, pageToken) || other.pageToken == pageToken));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(letters),const DeepCollectionEquality().hash(selectedLetter),isEndListing,pageToken);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LetterState(status: $status, letters: $letters, selectedLetter: $selectedLetter, isEndListing: $isEndListing, pageToken: $pageToken)';
}


}

/// @nodoc
abstract mixin class $LetterStateCopyWith<$Res>  {
  factory $LetterStateCopyWith(LetterState value, $Res Function(LetterState) _then) = _$LetterStateCopyWithImpl;
@useResult
$Res call({
 LetterConnectionStatus status, List<LetterMetadataModel> letters, LetterMetadataModelData? selectedLetter, bool isEndListing, String? pageToken
});




}
/// @nodoc
class _$LetterStateCopyWithImpl<$Res>
    implements $LetterStateCopyWith<$Res> {
  _$LetterStateCopyWithImpl(this._self, this._then);

  final LetterState _self;
  final $Res Function(LetterState) _then;

/// Create a copy of LetterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? letters = null,Object? selectedLetter = freezed,Object? isEndListing = null,Object? pageToken = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LetterConnectionStatus,letters: null == letters ? _self.letters : letters // ignore: cast_nullable_to_non_nullable
as List<LetterMetadataModel>,selectedLetter: freezed == selectedLetter ? _self.selectedLetter : selectedLetter // ignore: cast_nullable_to_non_nullable
as LetterMetadataModelData?,isEndListing: null == isEndListing ? _self.isEndListing : isEndListing // ignore: cast_nullable_to_non_nullable
as bool,pageToken: freezed == pageToken ? _self.pageToken : pageToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LetterState].
extension LetterStatePatterns on LetterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LetterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LetterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LetterState value)  $default,){
final _that = this;
switch (_that) {
case _LetterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LetterState value)?  $default,){
final _that = this;
switch (_that) {
case _LetterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LetterConnectionStatus status,  List<LetterMetadataModel> letters,  LetterMetadataModelData? selectedLetter,  bool isEndListing,  String? pageToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LetterState() when $default != null:
return $default(_that.status,_that.letters,_that.selectedLetter,_that.isEndListing,_that.pageToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LetterConnectionStatus status,  List<LetterMetadataModel> letters,  LetterMetadataModelData? selectedLetter,  bool isEndListing,  String? pageToken)  $default,) {final _that = this;
switch (_that) {
case _LetterState():
return $default(_that.status,_that.letters,_that.selectedLetter,_that.isEndListing,_that.pageToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LetterConnectionStatus status,  List<LetterMetadataModel> letters,  LetterMetadataModelData? selectedLetter,  bool isEndListing,  String? pageToken)?  $default,) {final _that = this;
switch (_that) {
case _LetterState() when $default != null:
return $default(_that.status,_that.letters,_that.selectedLetter,_that.isEndListing,_that.pageToken);case _:
  return null;

}
}

}

/// @nodoc


class _LetterState with DiagnosticableTreeMixin implements LetterState {
  const _LetterState({this.status = LetterConnectionStatus.done, final  List<LetterMetadataModel> letters = const <LetterMetadataModel>[], this.selectedLetter, this.isEndListing = false, this.pageToken}): _letters = letters;
  

@override@JsonKey() final  LetterConnectionStatus status;
 final  List<LetterMetadataModel> _letters;
@override@JsonKey() List<LetterMetadataModel> get letters {
  if (_letters is EqualUnmodifiableListView) return _letters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_letters);
}

@override final  LetterMetadataModelData? selectedLetter;
@override@JsonKey() final  bool isEndListing;
@override final  String? pageToken;

/// Create a copy of LetterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LetterStateCopyWith<_LetterState> get copyWith => __$LetterStateCopyWithImpl<_LetterState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LetterState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('letters', letters))..add(DiagnosticsProperty('selectedLetter', selectedLetter))..add(DiagnosticsProperty('isEndListing', isEndListing))..add(DiagnosticsProperty('pageToken', pageToken));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LetterState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._letters, _letters)&&const DeepCollectionEquality().equals(other.selectedLetter, selectedLetter)&&(identical(other.isEndListing, isEndListing) || other.isEndListing == isEndListing)&&(identical(other.pageToken, pageToken) || other.pageToken == pageToken));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_letters),const DeepCollectionEquality().hash(selectedLetter),isEndListing,pageToken);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LetterState(status: $status, letters: $letters, selectedLetter: $selectedLetter, isEndListing: $isEndListing, pageToken: $pageToken)';
}


}

/// @nodoc
abstract mixin class _$LetterStateCopyWith<$Res> implements $LetterStateCopyWith<$Res> {
  factory _$LetterStateCopyWith(_LetterState value, $Res Function(_LetterState) _then) = __$LetterStateCopyWithImpl;
@override @useResult
$Res call({
 LetterConnectionStatus status, List<LetterMetadataModel> letters, LetterMetadataModelData? selectedLetter, bool isEndListing, String? pageToken
});




}
/// @nodoc
class __$LetterStateCopyWithImpl<$Res>
    implements _$LetterStateCopyWith<$Res> {
  __$LetterStateCopyWithImpl(this._self, this._then);

  final _LetterState _self;
  final $Res Function(_LetterState) _then;

/// Create a copy of LetterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? letters = null,Object? selectedLetter = freezed,Object? isEndListing = null,Object? pageToken = freezed,}) {
  return _then(_LetterState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LetterConnectionStatus,letters: null == letters ? _self._letters : letters // ignore: cast_nullable_to_non_nullable
as List<LetterMetadataModel>,selectedLetter: freezed == selectedLetter ? _self.selectedLetter : selectedLetter // ignore: cast_nullable_to_non_nullable
as LetterMetadataModelData?,isEndListing: null == isEndListing ? _self.isEndListing : isEndListing // ignore: cast_nullable_to_non_nullable
as bool,pageToken: freezed == pageToken ? _self.pageToken : pageToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
