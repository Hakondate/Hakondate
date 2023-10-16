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
  ScrollController get scrollController => throw _privateConstructorUsedError;
  LetterConnectionStatus get status => throw _privateConstructorUsedError;
  List<LetterMetadataModel> get letters => throw _privateConstructorUsedError;
  LetterMetadataModelData? get selectedLetter =>
      throw _privateConstructorUsedError;
  bool get isEndListing => throw _privateConstructorUsedError;
  String? get pageToken => throw _privateConstructorUsedError;

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
      {ScrollController scrollController,
      LetterConnectionStatus status,
      List<LetterMetadataModel> letters,
      LetterMetadataModelData? selectedLetter,
      bool isEndListing,
      String? pageToken});
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
    Object? scrollController = null,
    Object? status = null,
    Object? letters = null,
    Object? selectedLetter = freezed,
    Object? isEndListing = null,
    Object? pageToken = freezed,
  }) {
    return _then(_value.copyWith(
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LetterStateCopyWith<$Res>
    implements $LetterStateCopyWith<$Res> {
  factory _$$_LetterStateCopyWith(
          _$_LetterState value, $Res Function(_$_LetterState) then) =
      __$$_LetterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScrollController scrollController,
      LetterConnectionStatus status,
      List<LetterMetadataModel> letters,
      LetterMetadataModelData? selectedLetter,
      bool isEndListing,
      String? pageToken});
}

/// @nodoc
class __$$_LetterStateCopyWithImpl<$Res>
    extends _$LetterStateCopyWithImpl<$Res, _$_LetterState>
    implements _$$_LetterStateCopyWith<$Res> {
  __$$_LetterStateCopyWithImpl(
      _$_LetterState _value, $Res Function(_$_LetterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollController = null,
    Object? status = null,
    Object? letters = null,
    Object? selectedLetter = freezed,
    Object? isEndListing = null,
    Object? pageToken = freezed,
  }) {
    return _then(_$_LetterState(
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
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
    ));
  }
}

/// @nodoc

class _$_LetterState with DiagnosticableTreeMixin implements _LetterState {
  const _$_LetterState(
      {required this.scrollController,
      this.status = LetterConnectionStatus.done,
      final List<LetterMetadataModel> letters = const <LetterMetadataModel>[],
      this.selectedLetter,
      this.isEndListing = false,
      this.pageToken})
      : _letters = letters;

  @override
  final ScrollController scrollController;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LetterState(scrollController: $scrollController, status: $status, letters: $letters, selectedLetter: $selectedLetter, isEndListing: $isEndListing, pageToken: $pageToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LetterState'))
      ..add(DiagnosticsProperty('scrollController', scrollController))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('letters', letters))
      ..add(DiagnosticsProperty('selectedLetter', selectedLetter))
      ..add(DiagnosticsProperty('isEndListing', isEndListing))
      ..add(DiagnosticsProperty('pageToken', pageToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LetterState &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._letters, _letters) &&
            const DeepCollectionEquality()
                .equals(other.selectedLetter, selectedLetter) &&
            (identical(other.isEndListing, isEndListing) ||
                other.isEndListing == isEndListing) &&
            (identical(other.pageToken, pageToken) ||
                other.pageToken == pageToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      scrollController,
      status,
      const DeepCollectionEquality().hash(_letters),
      const DeepCollectionEquality().hash(selectedLetter),
      isEndListing,
      pageToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LetterStateCopyWith<_$_LetterState> get copyWith =>
      __$$_LetterStateCopyWithImpl<_$_LetterState>(this, _$identity);
}

abstract class _LetterState implements LetterState {
  const factory _LetterState(
      {required final ScrollController scrollController,
      final LetterConnectionStatus status,
      final List<LetterMetadataModel> letters,
      final LetterMetadataModelData? selectedLetter,
      final bool isEndListing,
      final String? pageToken}) = _$_LetterState;

  @override
  ScrollController get scrollController;
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
  @JsonKey(ignore: true)
  _$$_LetterStateCopyWith<_$_LetterState> get copyWith =>
      throw _privateConstructorUsedError;
}
