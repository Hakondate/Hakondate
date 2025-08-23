// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DictionarySearchState {

 TextEditingController get searchBarTextController; List<DictionaryItemModel> get searchedItems;
/// Create a copy of DictionarySearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DictionarySearchStateCopyWith<DictionarySearchState> get copyWith => _$DictionarySearchStateCopyWithImpl<DictionarySearchState>(this as DictionarySearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DictionarySearchState&&(identical(other.searchBarTextController, searchBarTextController) || other.searchBarTextController == searchBarTextController)&&const DeepCollectionEquality().equals(other.searchedItems, searchedItems));
}


@override
int get hashCode => Object.hash(runtimeType,searchBarTextController,const DeepCollectionEquality().hash(searchedItems));

@override
String toString() {
  return 'DictionarySearchState(searchBarTextController: $searchBarTextController, searchedItems: $searchedItems)';
}


}

/// @nodoc
abstract mixin class $DictionarySearchStateCopyWith<$Res>  {
  factory $DictionarySearchStateCopyWith(DictionarySearchState value, $Res Function(DictionarySearchState) _then) = _$DictionarySearchStateCopyWithImpl;
@useResult
$Res call({
 TextEditingController searchBarTextController, List<DictionaryItemModel> searchedItems
});




}
/// @nodoc
class _$DictionarySearchStateCopyWithImpl<$Res>
    implements $DictionarySearchStateCopyWith<$Res> {
  _$DictionarySearchStateCopyWithImpl(this._self, this._then);

  final DictionarySearchState _self;
  final $Res Function(DictionarySearchState) _then;

/// Create a copy of DictionarySearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchBarTextController = null,Object? searchedItems = null,}) {
  return _then(_self.copyWith(
searchBarTextController: null == searchBarTextController ? _self.searchBarTextController : searchBarTextController // ignore: cast_nullable_to_non_nullable
as TextEditingController,searchedItems: null == searchedItems ? _self.searchedItems : searchedItems // ignore: cast_nullable_to_non_nullable
as List<DictionaryItemModel>,
  ));
}

}


/// @nodoc


class _DictionarySearchState implements DictionarySearchState {
  const _DictionarySearchState({required this.searchBarTextController, final  List<DictionaryItemModel> searchedItems = const <DictionaryItemModel>[]}): _searchedItems = searchedItems;
  

@override final  TextEditingController searchBarTextController;
 final  List<DictionaryItemModel> _searchedItems;
@override@JsonKey() List<DictionaryItemModel> get searchedItems {
  if (_searchedItems is EqualUnmodifiableListView) return _searchedItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchedItems);
}


/// Create a copy of DictionarySearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DictionarySearchStateCopyWith<_DictionarySearchState> get copyWith => __$DictionarySearchStateCopyWithImpl<_DictionarySearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DictionarySearchState&&(identical(other.searchBarTextController, searchBarTextController) || other.searchBarTextController == searchBarTextController)&&const DeepCollectionEquality().equals(other._searchedItems, _searchedItems));
}


@override
int get hashCode => Object.hash(runtimeType,searchBarTextController,const DeepCollectionEquality().hash(_searchedItems));

@override
String toString() {
  return 'DictionarySearchState(searchBarTextController: $searchBarTextController, searchedItems: $searchedItems)';
}


}

/// @nodoc
abstract mixin class _$DictionarySearchStateCopyWith<$Res> implements $DictionarySearchStateCopyWith<$Res> {
  factory _$DictionarySearchStateCopyWith(_DictionarySearchState value, $Res Function(_DictionarySearchState) _then) = __$DictionarySearchStateCopyWithImpl;
@override @useResult
$Res call({
 TextEditingController searchBarTextController, List<DictionaryItemModel> searchedItems
});




}
/// @nodoc
class __$DictionarySearchStateCopyWithImpl<$Res>
    implements _$DictionarySearchStateCopyWith<$Res> {
  __$DictionarySearchStateCopyWithImpl(this._self, this._then);

  final _DictionarySearchState _self;
  final $Res Function(_DictionarySearchState) _then;

/// Create a copy of DictionarySearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchBarTextController = null,Object? searchedItems = null,}) {
  return _then(_DictionarySearchState(
searchBarTextController: null == searchBarTextController ? _self.searchBarTextController : searchBarTextController // ignore: cast_nullable_to_non_nullable
as TextEditingController,searchedItems: null == searchedItems ? _self._searchedItems : searchedItems // ignore: cast_nullable_to_non_nullable
as List<DictionaryItemModel>,
  ));
}


}

// dart format on
