// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'letter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LetterState {
  LetterConnectionStatus get status => throw _privateConstructorUsedError;
  List<LetterMetadataModel> get letters => throw _privateConstructorUsedError;
  LetterMetadataModelData? get selectedLetter =>
      throw _privateConstructorUsedError;
  bool get isEndListing => throw _privateConstructorUsedError;
  String? get pageToken => throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LetterStateCopyWith<LetterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LetterStateCopyWith<$Res> {
  factory $LetterStateCopyWith(
          LetterState value, $Res Function(LetterState) then) =
      _$LetterStateCopyWithImpl<$Res, LetterState>;
  @useResult
  $Res call(
      {LetterConnectionStatus status,
      List<LetterMetadataModel> letters,
      LetterMetadataModelData? selectedLetter,
      bool isEndListing,
      String? pageToken,
      ScrollController scrollController});
}

/// @nodoc
class _$LetterStateCopyWithImpl<$Res, $Val extends LetterState>
    implements $LetterStateCopyWith<$Res> {
  _$LetterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? letters = null,
    Object? selectedLetter = freezed,
    Object? isEndListing = null,
    Object? pageToken = freezed,
    Object? scrollController = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LetterConnectionStatus,
      letters: null == letters
          ? _value.letters
          : letters // ignore: cast_nullable_to_non_nullable
              as List<LetterMetadataModel>,
      selectedLetter: freezed == selectedLetter
          ? _value.selectedLetter
          : selectedLetter // ignore: cast_nullable_to_non_nullable
              as LetterMetadataModelData?,
      isEndListing: null == isEndListing
          ? _value.isEndListing
          : isEndListing // ignore: cast_nullable_to_non_nullable
              as bool,
      pageToken: freezed == pageToken
          ? _value.pageToken
          : pageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LetterStateImplCopyWith<$Res>
    implements $LetterStateCopyWith<$Res> {
  factory _$$LetterStateImplCopyWith(
          _$LetterStateImpl value, $Res Function(_$LetterStateImpl) then) =
      __$$LetterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LetterConnectionStatus status,
      List<LetterMetadataModel> letters,
      LetterMetadataModelData? selectedLetter,
      bool isEndListing,
      String? pageToken,
      ScrollController scrollController});
}

/// @nodoc
class __$$LetterStateImplCopyWithImpl<$Res>
    extends _$LetterStateCopyWithImpl<$Res, _$LetterStateImpl>
    implements _$$LetterStateImplCopyWith<$Res> {
  __$$LetterStateImplCopyWithImpl(
      _$LetterStateImpl _value, $Res Function(_$LetterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? letters = null,
    Object? selectedLetter = freezed,
    Object? isEndListing = null,
    Object? pageToken = freezed,
    Object? scrollController = null,
  }) {
    return _then(_$LetterStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LetterConnectionStatus,
      letters: null == letters
          ? _value._letters
          : letters // ignore: cast_nullable_to_non_nullable
              as List<LetterMetadataModel>,
      selectedLetter: freezed == selectedLetter
          ? _value.selectedLetter
          : selectedLetter // ignore: cast_nullable_to_non_nullable
              as LetterMetadataModelData?,
      isEndListing: null == isEndListing
          ? _value.isEndListing
          : isEndListing // ignore: cast_nullable_to_non_nullable
              as bool,
      pageToken: freezed == pageToken
          ? _value.pageToken
          : pageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ));
  }
}

/// @nodoc

class _$LetterStateImpl with DiagnosticableTreeMixin implements _LetterState {
  const _$LetterStateImpl(
      {this.status = LetterConnectionStatus.done,
      final List<LetterMetadataModel> letters = const <LetterMetadataModel>[],
      this.selectedLetter,
      this.isEndListing = false,
      this.pageToken,
      required this.scrollController})
      : _letters = letters;

  @override
  @JsonKey()
  final LetterConnectionStatus status;
  final List<LetterMetadataModel> _letters;
  @override
  @JsonKey()
  List<LetterMetadataModel> get letters {
    if (_letters is EqualUnmodifiableListView) return _letters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_letters);
  }

  @override
  final LetterMetadataModelData? selectedLetter;
  @override
  @JsonKey()
  final bool isEndListing;
  @override
  final String? pageToken;
  @override
  final ScrollController scrollController;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LetterState(status: $status, letters: $letters, selectedLetter: $selectedLetter, isEndListing: $isEndListing, pageToken: $pageToken, scrollController: $scrollController)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LetterState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('letters', letters))
      ..add(DiagnosticsProperty('selectedLetter', selectedLetter))
      ..add(DiagnosticsProperty('isEndListing', isEndListing))
      ..add(DiagnosticsProperty('pageToken', pageToken))
      ..add(DiagnosticsProperty('scrollController', scrollController));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LetterStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._letters, _letters) &&
            const DeepCollectionEquality()
                .equals(other.selectedLetter, selectedLetter) &&
            (identical(other.isEndListing, isEndListing) ||
                other.isEndListing == isEndListing) &&
            (identical(other.pageToken, pageToken) ||
                other.pageToken == pageToken) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_letters),
      const DeepCollectionEquality().hash(selectedLetter),
      isEndListing,
      pageToken,
      scrollController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LetterStateImplCopyWith<_$LetterStateImpl> get copyWith =>
      __$$LetterStateImplCopyWithImpl<_$LetterStateImpl>(this, _$identity);
}

abstract class _LetterState implements LetterState {
  const factory _LetterState(
      {final LetterConnectionStatus status,
      final List<LetterMetadataModel> letters,
      final LetterMetadataModelData? selectedLetter,
      final bool isEndListing,
      final String? pageToken,
      required final ScrollController scrollController}) = _$LetterStateImpl;

  @override
  LetterConnectionStatus get status;
  @override
  List<LetterMetadataModel> get letters;
  @override
  LetterMetadataModelData? get selectedLetter;
  @override
  bool get isEndListing;
  @override
  String? get pageToken;
  @override
  ScrollController get scrollController;
  @override
  @JsonKey(ignore: true)
  _$$LetterStateImplCopyWith<_$LetterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
