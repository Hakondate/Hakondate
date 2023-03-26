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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DictionaryItemModel>? selectedGroupItems,
            DictionaryItemModel? selectedItem)
        data,
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DictionaryItemModel>? selectedGroupItems,
            DictionaryItemModel? selectedItem)?
        data,
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DictionaryItemModel>? selectedGroupItems,
            DictionaryItemModel? selectedItem)?
        data,
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryStateData value) data,
    required TResult Function(DictionaryStateLoad value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryStateData value)? data,
    TResult? Function(DictionaryStateLoad value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryStateData value)? data,
    TResult Function(DictionaryStateLoad value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryStateCopyWith<$Res> {
  factory $DictionaryStateCopyWith(
          DictionaryState value, $Res Function(DictionaryState) then) =
      _$DictionaryStateCopyWithImpl<$Res, DictionaryState>;
}

/// @nodoc
class _$DictionaryStateCopyWithImpl<$Res, $Val extends DictionaryState>
    implements $DictionaryStateCopyWith<$Res> {
  _$DictionaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DictionaryStateDataCopyWith<$Res> {
  factory _$$DictionaryStateDataCopyWith(_$DictionaryStateData value,
          $Res Function(_$DictionaryStateData) then) =
      __$$DictionaryStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<DictionaryItemModel>? selectedGroupItems,
      DictionaryItemModel? selectedItem});

  $DictionaryItemModelCopyWith<$Res>? get selectedItem;
}

/// @nodoc
class __$$DictionaryStateDataCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$DictionaryStateData>
    implements _$$DictionaryStateDataCopyWith<$Res> {
  __$$DictionaryStateDataCopyWithImpl(
      _$DictionaryStateData _value, $Res Function(_$DictionaryStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGroupItems = freezed,
    Object? selectedItem = freezed,
  }) {
    return _then(_$DictionaryStateData(
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

  @override
  @pragma('vm:prefer-inline')
  $DictionaryItemModelCopyWith<$Res>? get selectedItem {
    if (_value.selectedItem == null) {
      return null;
    }

    return $DictionaryItemModelCopyWith<$Res>(_value.selectedItem!, (value) {
      return _then(_value.copyWith(selectedItem: value));
    });
  }
}

/// @nodoc

class _$DictionaryStateData implements DictionaryStateData {
  const _$DictionaryStateData(
      {final List<DictionaryItemModel>? selectedGroupItems, this.selectedItem})
      : _selectedGroupItems = selectedGroupItems;

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
    return 'DictionaryState.data(selectedGroupItems: $selectedGroupItems, selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryStateData &&
            const DeepCollectionEquality()
                .equals(other._selectedGroupItems, _selectedGroupItems) &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_selectedGroupItems), selectedItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryStateDataCopyWith<_$DictionaryStateData> get copyWith =>
      __$$DictionaryStateDataCopyWithImpl<_$DictionaryStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DictionaryItemModel>? selectedGroupItems,
            DictionaryItemModel? selectedItem)
        data,
    required TResult Function() load,
  }) {
    return data(selectedGroupItems, selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DictionaryItemModel>? selectedGroupItems,
            DictionaryItemModel? selectedItem)?
        data,
    TResult? Function()? load,
  }) {
    return data?.call(selectedGroupItems, selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DictionaryItemModel>? selectedGroupItems,
            DictionaryItemModel? selectedItem)?
        data,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(selectedGroupItems, selectedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DictionaryStateData value) data,
    required TResult Function(DictionaryStateLoad value) load,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryStateData value)? data,
    TResult? Function(DictionaryStateLoad value)? load,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryStateData value)? data,
    TResult Function(DictionaryStateLoad value)? load,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DictionaryStateData implements DictionaryState {
  const factory DictionaryStateData(
      {final List<DictionaryItemModel>? selectedGroupItems,
      final DictionaryItemModel? selectedItem}) = _$DictionaryStateData;

  List<DictionaryItemModel>? get selectedGroupItems;
  DictionaryItemModel? get selectedItem;
  @JsonKey(ignore: true)
  _$$DictionaryStateDataCopyWith<_$DictionaryStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DictionaryStateLoadCopyWith<$Res> {
  factory _$$DictionaryStateLoadCopyWith(_$DictionaryStateLoad value,
          $Res Function(_$DictionaryStateLoad) then) =
      __$$DictionaryStateLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DictionaryStateLoadCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$DictionaryStateLoad>
    implements _$$DictionaryStateLoadCopyWith<$Res> {
  __$$DictionaryStateLoadCopyWithImpl(
      _$DictionaryStateLoad _value, $Res Function(_$DictionaryStateLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DictionaryStateLoad implements DictionaryStateLoad {
  const _$DictionaryStateLoad();

  @override
  String toString() {
    return 'DictionaryState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DictionaryStateLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DictionaryItemModel>? selectedGroupItems,
            DictionaryItemModel? selectedItem)
        data,
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DictionaryItemModel>? selectedGroupItems,
            DictionaryItemModel? selectedItem)?
        data,
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DictionaryItemModel>? selectedGroupItems,
            DictionaryItemModel? selectedItem)?
        data,
    TResult Function()? load,
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
    required TResult Function(DictionaryStateData value) data,
    required TResult Function(DictionaryStateLoad value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DictionaryStateData value)? data,
    TResult? Function(DictionaryStateLoad value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DictionaryStateData value)? data,
    TResult Function(DictionaryStateLoad value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class DictionaryStateLoad implements DictionaryState {
  const factory DictionaryStateLoad() = _$DictionaryStateLoad;
}
