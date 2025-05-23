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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DictionaryState {
  DictionaryGroup? get selectedGroup => throw _privateConstructorUsedError;
  List<DictionaryItemModel>? get selectedGroupItems =>
      throw _privateConstructorUsedError;
  DictionaryItemModel? get selectedItem => throw _privateConstructorUsedError;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      DictionaryItemModel? selectedItem});

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

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGroup = freezed,
    Object? selectedGroupItems = freezed,
    Object? selectedItem = freezed,
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
    ) as $Val);
  }

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$DictionaryStateImplCopyWith<$Res>
    implements $DictionaryStateCopyWith<$Res> {
  factory _$$DictionaryStateImplCopyWith(_$DictionaryStateImpl value,
          $Res Function(_$DictionaryStateImpl) then) =
      __$$DictionaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DictionaryGroup? selectedGroup,
      List<DictionaryItemModel>? selectedGroupItems,
      DictionaryItemModel? selectedItem});

  @override
  $DictionaryItemModelCopyWith<$Res>? get selectedItem;
}

/// @nodoc
class __$$DictionaryStateImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$DictionaryStateImpl>
    implements _$$DictionaryStateImplCopyWith<$Res> {
  __$$DictionaryStateImplCopyWithImpl(
      _$DictionaryStateImpl _value, $Res Function(_$DictionaryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGroup = freezed,
    Object? selectedGroupItems = freezed,
    Object? selectedItem = freezed,
  }) {
    return _then(_$DictionaryStateImpl(
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
    ));
  }
}

/// @nodoc

class _$DictionaryStateImpl implements _DictionaryState {
  const _$DictionaryStateImpl(
      {this.selectedGroup,
      final List<DictionaryItemModel>? selectedGroupItems,
      this.selectedItem})
      : _selectedGroupItems = selectedGroupItems;

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

  @override
  String toString() {
    return 'DictionaryState(selectedGroup: $selectedGroup, selectedGroupItems: $selectedGroupItems, selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryStateImpl &&
            (identical(other.selectedGroup, selectedGroup) ||
                other.selectedGroup == selectedGroup) &&
            const DeepCollectionEquality()
                .equals(other._selectedGroupItems, _selectedGroupItems) &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedGroup,
      const DeepCollectionEquality().hash(_selectedGroupItems), selectedItem);

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryStateImplCopyWith<_$DictionaryStateImpl> get copyWith =>
      __$$DictionaryStateImplCopyWithImpl<_$DictionaryStateImpl>(
          this, _$identity);
}

abstract class _DictionaryState implements DictionaryState {
  const factory _DictionaryState(
      {final DictionaryGroup? selectedGroup,
      final List<DictionaryItemModel>? selectedGroupItems,
      final DictionaryItemModel? selectedItem}) = _$DictionaryStateImpl;

  @override
  DictionaryGroup? get selectedGroup;
  @override
  List<DictionaryItemModel>? get selectedGroupItems;
  @override
  DictionaryItemModel? get selectedItem;

  /// Create a copy of DictionaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionaryStateImplCopyWith<_$DictionaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
