// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'letters_remote_repository_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LettersRemoteRepositoryModel {
  int get maxResults => throw _privateConstructorUsedError;
  String? get pageToken => throw _privateConstructorUsedError;
  bool get isEndListing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LettersRemoteRepositoryModelCopyWith<LettersRemoteRepositoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LettersRemoteRepositoryModelCopyWith<$Res> {
  factory $LettersRemoteRepositoryModelCopyWith(
          LettersRemoteRepositoryModel value,
          $Res Function(LettersRemoteRepositoryModel) then) =
      _$LettersRemoteRepositoryModelCopyWithImpl<$Res,
          LettersRemoteRepositoryModel>;
  @useResult
  $Res call({int maxResults, String? pageToken, bool isEndListing});
}

/// @nodoc
class _$LettersRemoteRepositoryModelCopyWithImpl<$Res,
        $Val extends LettersRemoteRepositoryModel>
    implements $LettersRemoteRepositoryModelCopyWith<$Res> {
  _$LettersRemoteRepositoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxResults = null,
    Object? pageToken = freezed,
    Object? isEndListing = null,
  }) {
    return _then(_value.copyWith(
      maxResults: null == maxResults
          ? _value.maxResults
          : maxResults // ignore: cast_nullable_to_non_nullable
              as int,
      pageToken: freezed == pageToken
          ? _value.pageToken
          : pageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isEndListing: null == isEndListing
          ? _value.isEndListing
          : isEndListing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LettersRemoteRepositoryModelCopyWith<$Res>
    implements $LettersRemoteRepositoryModelCopyWith<$Res> {
  factory _$$_LettersRemoteRepositoryModelCopyWith(
          _$_LettersRemoteRepositoryModel value,
          $Res Function(_$_LettersRemoteRepositoryModel) then) =
      __$$_LettersRemoteRepositoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxResults, String? pageToken, bool isEndListing});
}

/// @nodoc
class __$$_LettersRemoteRepositoryModelCopyWithImpl<$Res>
    extends _$LettersRemoteRepositoryModelCopyWithImpl<$Res,
        _$_LettersRemoteRepositoryModel>
    implements _$$_LettersRemoteRepositoryModelCopyWith<$Res> {
  __$$_LettersRemoteRepositoryModelCopyWithImpl(
      _$_LettersRemoteRepositoryModel _value,
      $Res Function(_$_LettersRemoteRepositoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxResults = null,
    Object? pageToken = freezed,
    Object? isEndListing = null,
  }) {
    return _then(_$_LettersRemoteRepositoryModel(
      maxResults: null == maxResults
          ? _value.maxResults
          : maxResults // ignore: cast_nullable_to_non_nullable
              as int,
      pageToken: freezed == pageToken
          ? _value.pageToken
          : pageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isEndListing: null == isEndListing
          ? _value.isEndListing
          : isEndListing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LettersRemoteRepositoryModel implements _LettersRemoteRepositoryModel {
  const _$_LettersRemoteRepositoryModel(
      {required this.maxResults, this.pageToken, this.isEndListing = false});

  @override
  final int maxResults;
  @override
  final String? pageToken;
  @override
  @JsonKey()
  final bool isEndListing;

  @override
  String toString() {
    return 'LettersRemoteRepositoryModel(maxResults: $maxResults, pageToken: $pageToken, isEndListing: $isEndListing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LettersRemoteRepositoryModel &&
            (identical(other.maxResults, maxResults) ||
                other.maxResults == maxResults) &&
            (identical(other.pageToken, pageToken) ||
                other.pageToken == pageToken) &&
            (identical(other.isEndListing, isEndListing) ||
                other.isEndListing == isEndListing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, maxResults, pageToken, isEndListing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LettersRemoteRepositoryModelCopyWith<_$_LettersRemoteRepositoryModel>
      get copyWith => __$$_LettersRemoteRepositoryModelCopyWithImpl<
          _$_LettersRemoteRepositoryModel>(this, _$identity);
}

abstract class _LettersRemoteRepositoryModel
    implements LettersRemoteRepositoryModel {
  const factory _LettersRemoteRepositoryModel(
      {required final int maxResults,
      final String? pageToken,
      final bool isEndListing}) = _$_LettersRemoteRepositoryModel;

  @override
  int get maxResults;
  @override
  String? get pageToken;
  @override
  bool get isEndListing;
  @override
  @JsonKey(ignore: true)
  _$$_LettersRemoteRepositoryModelCopyWith<_$_LettersRemoteRepositoryModel>
      get copyWith => throw _privateConstructorUsedError;
}
