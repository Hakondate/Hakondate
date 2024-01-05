// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DictionarySearchState {
  TextEditingController get searchBarTextController =>
      throw _privateConstructorUsedError;
  List<DictionaryItemModel> get searchedItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DictionarySearchStateCopyWith<DictionarySearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionarySearchStateCopyWith<$Res> {
  factory $DictionarySearchStateCopyWith(DictionarySearchState value,
          $Res Function(DictionarySearchState) then) =
      _$DictionarySearchStateCopyWithImpl<$Res, DictionarySearchState>;
  @useResult
  $Res call(
      {TextEditingController searchBarTextController,
      List<DictionaryItemModel> searchedItems});
}

/// @nodoc
class _$DictionarySearchStateCopyWithImpl<$Res,
        $Val extends DictionarySearchState>
    implements $DictionarySearchStateCopyWith<$Res> {
  _$DictionarySearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchBarTextController = null,
    Object? searchedItems = null,
  }) {
    return _then(_value.copyWith(
      searchBarTextController: null == searchBarTextController
          ? _value.searchBarTextController
          : searchBarTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      searchedItems: null == searchedItems
          ? _value.searchedItems
          : searchedItems // ignore: cast_nullable_to_non_nullable
              as List<DictionaryItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DictionarySearchStateImplCopyWith<$Res>
    implements $DictionarySearchStateCopyWith<$Res> {
  factory _$$DictionarySearchStateImplCopyWith(
          _$DictionarySearchStateImpl value,
          $Res Function(_$DictionarySearchStateImpl) then) =
      __$$DictionarySearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController searchBarTextController,
      List<DictionaryItemModel> searchedItems});
}

/// @nodoc
class __$$DictionarySearchStateImplCopyWithImpl<$Res>
    extends _$DictionarySearchStateCopyWithImpl<$Res,
        _$DictionarySearchStateImpl>
    implements _$$DictionarySearchStateImplCopyWith<$Res> {
  __$$DictionarySearchStateImplCopyWithImpl(_$DictionarySearchStateImpl _value,
      $Res Function(_$DictionarySearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchBarTextController = null,
    Object? searchedItems = null,
  }) {
    return _then(_$DictionarySearchStateImpl(
      searchBarTextController: null == searchBarTextController
          ? _value.searchBarTextController
          : searchBarTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      searchedItems: null == searchedItems
          ? _value._searchedItems
          : searchedItems // ignore: cast_nullable_to_non_nullable
              as List<DictionaryItemModel>,
    ));
  }
}

/// @nodoc

class _$DictionarySearchStateImpl implements _DictionarySearchState {
  const _$DictionarySearchStateImpl(
      {required this.searchBarTextController,
      final List<DictionaryItemModel> searchedItems =
          const <DictionaryItemModel>[]})
      : _searchedItems = searchedItems;

  @override
  final TextEditingController searchBarTextController;
  final List<DictionaryItemModel> _searchedItems;
  @override
  @JsonKey()
  List<DictionaryItemModel> get searchedItems {
    if (_searchedItems is EqualUnmodifiableListView) return _searchedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedItems);
  }

  @override
  String toString() {
    return 'DictionarySearchState(searchBarTextController: $searchBarTextController, searchedItems: $searchedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionarySearchStateImpl &&
            (identical(
                    other.searchBarTextController, searchBarTextController) ||
                other.searchBarTextController == searchBarTextController) &&
            const DeepCollectionEquality()
                .equals(other._searchedItems, _searchedItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchBarTextController,
      const DeepCollectionEquality().hash(_searchedItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionarySearchStateImplCopyWith<_$DictionarySearchStateImpl>
      get copyWith => __$$DictionarySearchStateImplCopyWithImpl<
          _$DictionarySearchStateImpl>(this, _$identity);
}

abstract class _DictionarySearchState implements DictionarySearchState {
  const factory _DictionarySearchState(
          {required final TextEditingController searchBarTextController,
          final List<DictionaryItemModel> searchedItems}) =
      _$DictionarySearchStateImpl;

  @override
  TextEditingController get searchBarTextController;
  @override
  List<DictionaryItemModel> get searchedItems;
  @override
  @JsonKey(ignore: true)
  _$$DictionarySearchStateImplCopyWith<_$DictionarySearchStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
