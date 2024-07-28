// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scroll_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScrollState {
  ScrollController get dailyScrollController =>
      throw _privateConstructorUsedError;
  ScrollController get recipesScrollController =>
      throw _privateConstructorUsedError;
  ScrollController get dictionaryScrollController =>
      throw _privateConstructorUsedError;
  ScrollController get letterScrollController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScrollStateCopyWith<ScrollState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrollStateCopyWith<$Res> {
  factory $ScrollStateCopyWith(
          ScrollState value, $Res Function(ScrollState) then) =
      _$ScrollStateCopyWithImpl<$Res, ScrollState>;
  @useResult
  $Res call(
      {ScrollController dailyScrollController,
      ScrollController recipesScrollController,
      ScrollController dictionaryScrollController,
      ScrollController letterScrollController});
}

/// @nodoc
class _$ScrollStateCopyWithImpl<$Res, $Val extends ScrollState>
    implements $ScrollStateCopyWith<$Res> {
  _$ScrollStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyScrollController = null,
    Object? recipesScrollController = null,
    Object? dictionaryScrollController = null,
    Object? letterScrollController = null,
  }) {
    return _then(_value.copyWith(
      dailyScrollController: null == dailyScrollController
          ? _value.dailyScrollController
          : dailyScrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      recipesScrollController: null == recipesScrollController
          ? _value.recipesScrollController
          : recipesScrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      dictionaryScrollController: null == dictionaryScrollController
          ? _value.dictionaryScrollController
          : dictionaryScrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      letterScrollController: null == letterScrollController
          ? _value.letterScrollController
          : letterScrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrollStateImplCopyWith<$Res>
    implements $ScrollStateCopyWith<$Res> {
  factory _$$ScrollStateImplCopyWith(
          _$ScrollStateImpl value, $Res Function(_$ScrollStateImpl) then) =
      __$$ScrollStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScrollController dailyScrollController,
      ScrollController recipesScrollController,
      ScrollController dictionaryScrollController,
      ScrollController letterScrollController});
}

/// @nodoc
class __$$ScrollStateImplCopyWithImpl<$Res>
    extends _$ScrollStateCopyWithImpl<$Res, _$ScrollStateImpl>
    implements _$$ScrollStateImplCopyWith<$Res> {
  __$$ScrollStateImplCopyWithImpl(
      _$ScrollStateImpl _value, $Res Function(_$ScrollStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyScrollController = null,
    Object? recipesScrollController = null,
    Object? dictionaryScrollController = null,
    Object? letterScrollController = null,
  }) {
    return _then(_$ScrollStateImpl(
      dailyScrollController: null == dailyScrollController
          ? _value.dailyScrollController
          : dailyScrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      recipesScrollController: null == recipesScrollController
          ? _value.recipesScrollController
          : recipesScrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      dictionaryScrollController: null == dictionaryScrollController
          ? _value.dictionaryScrollController
          : dictionaryScrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      letterScrollController: null == letterScrollController
          ? _value.letterScrollController
          : letterScrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ));
  }
}

/// @nodoc

class _$ScrollStateImpl with DiagnosticableTreeMixin implements _ScrollState {
  const _$ScrollStateImpl(
      {required this.dailyScrollController,
      required this.recipesScrollController,
      required this.dictionaryScrollController,
      required this.letterScrollController});

  @override
  final ScrollController dailyScrollController;
  @override
  final ScrollController recipesScrollController;
  @override
  final ScrollController dictionaryScrollController;
  @override
  final ScrollController letterScrollController;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScrollState(dailyScrollController: $dailyScrollController, recipesScrollController: $recipesScrollController, dictionaryScrollController: $dictionaryScrollController, letterScrollController: $letterScrollController)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScrollState'))
      ..add(DiagnosticsProperty('dailyScrollController', dailyScrollController))
      ..add(DiagnosticsProperty(
          'recipesScrollController', recipesScrollController))
      ..add(DiagnosticsProperty(
          'dictionaryScrollController', dictionaryScrollController))
      ..add(DiagnosticsProperty(
          'letterScrollController', letterScrollController));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrollStateImpl &&
            (identical(other.dailyScrollController, dailyScrollController) ||
                other.dailyScrollController == dailyScrollController) &&
            (identical(
                    other.recipesScrollController, recipesScrollController) ||
                other.recipesScrollController == recipesScrollController) &&
            (identical(other.dictionaryScrollController,
                    dictionaryScrollController) ||
                other.dictionaryScrollController ==
                    dictionaryScrollController) &&
            (identical(other.letterScrollController, letterScrollController) ||
                other.letterScrollController == letterScrollController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dailyScrollController,
      recipesScrollController,
      dictionaryScrollController,
      letterScrollController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrollStateImplCopyWith<_$ScrollStateImpl> get copyWith =>
      __$$ScrollStateImplCopyWithImpl<_$ScrollStateImpl>(this, _$identity);
}

abstract class _ScrollState implements ScrollState {
  const factory _ScrollState(
          {required final ScrollController dailyScrollController,
          required final ScrollController recipesScrollController,
          required final ScrollController dictionaryScrollController,
          required final ScrollController letterScrollController}) =
      _$ScrollStateImpl;

  @override
  ScrollController get dailyScrollController;
  @override
  ScrollController get recipesScrollController;
  @override
  ScrollController get dictionaryScrollController;
  @override
  ScrollController get letterScrollController;
  @override
  @JsonKey(ignore: true)
  _$$ScrollStateImplCopyWith<_$ScrollStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
