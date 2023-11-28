// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DictionaryState {
  DictionaryGroup? get selectedGroup => throw _privateConstructorUsedError;
  List<DictionaryItemModel>? get selectedGroupItems =>
      throw _privateConstructorUsedError;
  DictionaryItemModel? get selectedItem => throw _privateConstructorUsedError;
  List<DictionaryItemModel>? get searchedItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DictionaryStateCopyWith<DictionaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryStateCopyWith<$Res> {
  factory $DictionaryStateCopyWith(
          DictionaryState value, $Res Function(DictionaryState) then) =
      _$DictionaryStateCopyWithImpl<$Res, DictionaryState>;
  @useResult
  $Res call(
      {DictionaryGroup? selectedGroup,
      List<DictionaryItemModel>? selectedGroupItems,
      DictionaryItemModel? selectedItem,
      List<DictionaryItemModel>? searchedItems});

  $DictionaryItemModelCopyWith<$Res>? get selectedItem;
}

/// @nodoc
class _$DictionaryStateCopyWithImpl<$Res, $Val extends DictionaryState>
    implements $DictionaryStateCopyWith<$Res> {
  _$DictionaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGroup = freezed,
    Object? selectedGroupItems = freezed,
    Object? selectedItem = freezed,
    Object? searchedItems = freezed,
  }) {
    return _then(_value.copyWith(
      selectedGroup: freezed == selectedGroup
          ? _value.selectedGroup
          : selectedGroup // ignore: cast_nullable_to_non_nullable
              as DictionaryGroup?,
      selectedGroupItems: freezed == selectedGroupItems
          ? _value.selectedGroupItems
          : selectedGroupItems // ignore: cast_nullable_to_non_nullable
              as List<DictionaryItemModel>?,
      selectedItem: freezed == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as DictionaryItemModel?,
      searchedItems: freezed == searchedItems
          ? _value.searchedItems
          : searchedItems // ignore: cast_nullable_to_non_nullable
              as List<DictionaryItemModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DictionaryItemModelCopyWith<$Res>? get selectedItem {
    if (_value.selectedItem == null) {
      return null;
    }

    return $DictionaryItemModelCopyWith<$Res>(_value.selectedItem!, (value) {
      return _then(_value.copyWith(selectedItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DictionaryStateCopyWith<$Res>
    implements $DictionaryStateCopyWith<$Res> {
  factory _$$_DictionaryStateCopyWith(
          _$_DictionaryState value, $Res Function(_$_DictionaryState) then) =
      __$$_DictionaryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DictionaryGroup? selectedGroup,
      List<DictionaryItemModel>? selectedGroupItems,
      DictionaryItemModel? selectedItem,
      List<DictionaryItemModel>? searchedItems});

  @override
  $DictionaryItemModelCopyWith<$Res>? get selectedItem;
}

/// @nodoc
class __$$_DictionaryStateCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$_DictionaryState>
    implements _$$_DictionaryStateCopyWith<$Res> {
  __$$_DictionaryStateCopyWithImpl(
      _$_DictionaryState _value, $Res Function(_$_DictionaryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGroup = freezed,
    Object? selectedGroupItems = freezed,
    Object? selectedItem = freezed,
    Object? searchedItems = freezed,
  }) {
    return _then(_$_DictionaryState(
      selectedGroup: freezed == selectedGroup
          ? _value.selectedGroup
          : selectedGroup // ignore: cast_nullable_to_non_nullable
              as DictionaryGroup?,
      selectedGroupItems: freezed == selectedGroupItems
          ? _value._selectedGroupItems
          : selectedGroupItems // ignore: cast_nullable_to_non_nullable
              as List<DictionaryItemModel>?,
      selectedItem: freezed == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as DictionaryItemModel?,
      searchedItems: freezed == searchedItems
          ? _value._searchedItems
          : searchedItems // ignore: cast_nullable_to_non_nullable
              as List<DictionaryItemModel>?,
    ));
  }
}

/// @nodoc

class _$_DictionaryState implements _DictionaryState {
  const _$_DictionaryState(
      {this.selectedGroup,
      final List<DictionaryItemModel>? selectedGroupItems,
      this.selectedItem,
      final List<DictionaryItemModel>? searchedItems})
      : _selectedGroupItems = selectedGroupItems,
        _searchedItems = searchedItems;

  @override
  final DictionaryGroup? selectedGroup;
  final List<DictionaryItemModel>? _selectedGroupItems;
  @override
  List<DictionaryItemModel>? get selectedGroupItems {
    final value = _selectedGroupItems;
    if (value == null) return null;
    if (_selectedGroupItems is EqualUnmodifiableListView)
      return _selectedGroupItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DictionaryItemModel? selectedItem;
  final List<DictionaryItemModel>? _searchedItems;
  @override
  List<DictionaryItemModel>? get searchedItems {
    final value = _searchedItems;
    if (value == null) return null;
    if (_searchedItems is EqualUnmodifiableListView) return _searchedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DictionaryState(selectedGroup: $selectedGroup, selectedGroupItems: $selectedGroupItems, selectedItem: $selectedItem, searchedItems: $searchedItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DictionaryState &&
            (identical(other.selectedGroup, selectedGroup) ||
                other.selectedGroup == selectedGroup) &&
            const DeepCollectionEquality()
                .equals(other._selectedGroupItems, _selectedGroupItems) &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem) &&
            const DeepCollectionEquality()
                .equals(other._searchedItems, _searchedItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedGroup,
      const DeepCollectionEquality().hash(_selectedGroupItems),
      selectedItem,
      const DeepCollectionEquality().hash(_searchedItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DictionaryStateCopyWith<_$_DictionaryState> get copyWith =>
      __$$_DictionaryStateCopyWithImpl<_$_DictionaryState>(this, _$identity);
}

abstract class _DictionaryState implements DictionaryState {
  const factory _DictionaryState(
      {final DictionaryGroup? selectedGroup,
      final List<DictionaryItemModel>? selectedGroupItems,
      final DictionaryItemModel? selectedItem,
      final List<DictionaryItemModel>? searchedItems}) = _$_DictionaryState;

  @override
  DictionaryGroup? get selectedGroup;
  @override
  List<DictionaryItemModel>? get selectedGroupItems;
  @override
  DictionaryItemModel? get selectedItem;
  @override
  List<DictionaryItemModel>? get searchedItems;
  @override
  @JsonKey(ignore: true)
  _$$_DictionaryStateCopyWith<_$_DictionaryState> get copyWith =>
      throw _privateConstructorUsedError;
}
