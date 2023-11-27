// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeState {
  ScrollController get scrollController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeStateCopyWith<RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res, RecipeState>;
  @useResult
  $Res call({ScrollController scrollController});
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res, $Val extends RecipeState>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollController = null,
  }) {
    return _then(_value.copyWith(
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeStateCopyWith<$Res>
    implements $RecipeStateCopyWith<$Res> {
  factory _$$_RecipeStateCopyWith(
          _$_RecipeState value, $Res Function(_$_RecipeState) then) =
      __$$_RecipeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScrollController scrollController});
}

/// @nodoc
class __$$_RecipeStateCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$_RecipeState>
    implements _$$_RecipeStateCopyWith<$Res> {
  __$$_RecipeStateCopyWithImpl(
      _$_RecipeState _value, $Res Function(_$_RecipeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollController = null,
  }) {
    return _then(_$_RecipeState(
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ));
  }
}

/// @nodoc

class _$_RecipeState implements _RecipeState {
  const _$_RecipeState({required this.scrollController});

  @override
  final ScrollController scrollController;

  @override
  String toString() {
    return 'RecipeState(scrollController: $scrollController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeState &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scrollController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeStateCopyWith<_$_RecipeState> get copyWith =>
      __$$_RecipeStateCopyWithImpl<_$_RecipeState>(this, _$identity);
}

abstract class _RecipeState implements RecipeState {
  const factory _RecipeState(
      {required final ScrollController scrollController}) = _$_RecipeState;

  @override
  ScrollController get scrollController;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeStateCopyWith<_$_RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}
