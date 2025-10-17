// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DictionaryState {

 DictionaryGroup? get selectedGroup; List<DictionaryItemModel>? get selectedGroupItems; DictionaryItemModel? get selectedItem;
/// Create a copy of DictionaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DictionaryStateCopyWith<DictionaryState> get copyWith => _$DictionaryStateCopyWithImpl<DictionaryState>(this as DictionaryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DictionaryState&&(identical(other.selectedGroup, selectedGroup) || other.selectedGroup == selectedGroup)&&const DeepCollectionEquality().equals(other.selectedGroupItems, selectedGroupItems)&&(identical(other.selectedItem, selectedItem) || other.selectedItem == selectedItem));
}


@override
int get hashCode => Object.hash(runtimeType,selectedGroup,const DeepCollectionEquality().hash(selectedGroupItems),selectedItem);

@override
String toString() {
  return 'DictionaryState(selectedGroup: $selectedGroup, selectedGroupItems: $selectedGroupItems, selectedItem: $selectedItem)';
}


}

/// @nodoc
abstract mixin class $DictionaryStateCopyWith<$Res>  {
  factory $DictionaryStateCopyWith(DictionaryState value, $Res Function(DictionaryState) _then) = _$DictionaryStateCopyWithImpl;
@useResult
$Res call({
 DictionaryGroup? selectedGroup, List<DictionaryItemModel>? selectedGroupItems, DictionaryItemModel? selectedItem
});


$DictionaryItemModelCopyWith<$Res>? get selectedItem;

}
/// @nodoc
class _$DictionaryStateCopyWithImpl<$Res>
    implements $DictionaryStateCopyWith<$Res> {
  _$DictionaryStateCopyWithImpl(this._self, this._then);

  final DictionaryState _self;
  final $Res Function(DictionaryState) _then;

/// Create a copy of DictionaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedGroup = freezed,Object? selectedGroupItems = freezed,Object? selectedItem = freezed,}) {
  return _then(_self.copyWith(
selectedGroup: freezed == selectedGroup ? _self.selectedGroup : selectedGroup // ignore: cast_nullable_to_non_nullable
as DictionaryGroup?,selectedGroupItems: freezed == selectedGroupItems ? _self.selectedGroupItems : selectedGroupItems // ignore: cast_nullable_to_non_nullable
as List<DictionaryItemModel>?,selectedItem: freezed == selectedItem ? _self.selectedItem : selectedItem // ignore: cast_nullable_to_non_nullable
as DictionaryItemModel?,
  ));
}
/// Create a copy of DictionaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DictionaryItemModelCopyWith<$Res>? get selectedItem {
    if (_self.selectedItem == null) {
    return null;
  }

  return $DictionaryItemModelCopyWith<$Res>(_self.selectedItem!, (value) {
    return _then(_self.copyWith(selectedItem: value));
  });
}
}


/// Adds pattern-matching-related methods to [DictionaryState].
extension DictionaryStatePatterns on DictionaryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DictionaryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DictionaryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DictionaryState value)  $default,){
final _that = this;
switch (_that) {
case _DictionaryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DictionaryState value)?  $default,){
final _that = this;
switch (_that) {
case _DictionaryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DictionaryGroup? selectedGroup,  List<DictionaryItemModel>? selectedGroupItems,  DictionaryItemModel? selectedItem)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DictionaryState() when $default != null:
return $default(_that.selectedGroup,_that.selectedGroupItems,_that.selectedItem);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DictionaryGroup? selectedGroup,  List<DictionaryItemModel>? selectedGroupItems,  DictionaryItemModel? selectedItem)  $default,) {final _that = this;
switch (_that) {
case _DictionaryState():
return $default(_that.selectedGroup,_that.selectedGroupItems,_that.selectedItem);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DictionaryGroup? selectedGroup,  List<DictionaryItemModel>? selectedGroupItems,  DictionaryItemModel? selectedItem)?  $default,) {final _that = this;
switch (_that) {
case _DictionaryState() when $default != null:
return $default(_that.selectedGroup,_that.selectedGroupItems,_that.selectedItem);case _:
  return null;

}
}

}

/// @nodoc


class _DictionaryState implements DictionaryState {
  const _DictionaryState({this.selectedGroup, final  List<DictionaryItemModel>? selectedGroupItems, this.selectedItem}): _selectedGroupItems = selectedGroupItems;
  

@override final  DictionaryGroup? selectedGroup;
 final  List<DictionaryItemModel>? _selectedGroupItems;
@override List<DictionaryItemModel>? get selectedGroupItems {
  final value = _selectedGroupItems;
  if (value == null) return null;
  if (_selectedGroupItems is EqualUnmodifiableListView) return _selectedGroupItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DictionaryItemModel? selectedItem;

/// Create a copy of DictionaryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DictionaryStateCopyWith<_DictionaryState> get copyWith => __$DictionaryStateCopyWithImpl<_DictionaryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DictionaryState&&(identical(other.selectedGroup, selectedGroup) || other.selectedGroup == selectedGroup)&&const DeepCollectionEquality().equals(other._selectedGroupItems, _selectedGroupItems)&&(identical(other.selectedItem, selectedItem) || other.selectedItem == selectedItem));
}


@override
int get hashCode => Object.hash(runtimeType,selectedGroup,const DeepCollectionEquality().hash(_selectedGroupItems),selectedItem);

@override
String toString() {
  return 'DictionaryState(selectedGroup: $selectedGroup, selectedGroupItems: $selectedGroupItems, selectedItem: $selectedItem)';
}


}

/// @nodoc
abstract mixin class _$DictionaryStateCopyWith<$Res> implements $DictionaryStateCopyWith<$Res> {
  factory _$DictionaryStateCopyWith(_DictionaryState value, $Res Function(_DictionaryState) _then) = __$DictionaryStateCopyWithImpl;
@override @useResult
$Res call({
 DictionaryGroup? selectedGroup, List<DictionaryItemModel>? selectedGroupItems, DictionaryItemModel? selectedItem
});


@override $DictionaryItemModelCopyWith<$Res>? get selectedItem;

}
/// @nodoc
class __$DictionaryStateCopyWithImpl<$Res>
    implements _$DictionaryStateCopyWith<$Res> {
  __$DictionaryStateCopyWithImpl(this._self, this._then);

  final _DictionaryState _self;
  final $Res Function(_DictionaryState) _then;

/// Create a copy of DictionaryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedGroup = freezed,Object? selectedGroupItems = freezed,Object? selectedItem = freezed,}) {
  return _then(_DictionaryState(
selectedGroup: freezed == selectedGroup ? _self.selectedGroup : selectedGroup // ignore: cast_nullable_to_non_nullable
as DictionaryGroup?,selectedGroupItems: freezed == selectedGroupItems ? _self._selectedGroupItems : selectedGroupItems // ignore: cast_nullable_to_non_nullable
as List<DictionaryItemModel>?,selectedItem: freezed == selectedItem ? _self.selectedItem : selectedItem // ignore: cast_nullable_to_non_nullable
as DictionaryItemModel?,
  ));
}

/// Create a copy of DictionaryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DictionaryItemModelCopyWith<$Res>? get selectedItem {
    if (_self.selectedItem == null) {
    return null;
  }

  return $DictionaryItemModelCopyWith<$Res>(_self.selectedItem!, (value) {
    return _then(_self.copyWith(selectedItem: value));
  });
}
}

// dart format on
