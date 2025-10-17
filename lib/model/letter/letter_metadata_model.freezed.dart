// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'letter_metadata_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LetterMetadataModel {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LetterMetadataModel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LetterMetadataModel()';
}


}

/// @nodoc
class $LetterMetadataModelCopyWith<$Res>  {
$LetterMetadataModelCopyWith(LetterMetadataModel _, $Res Function(LetterMetadataModel) __);
}


/// Adds pattern-matching-related methods to [LetterMetadataModel].
extension LetterMetadataModelPatterns on LetterMetadataModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LetterMetadataModelData value)?  data,TResult Function( LetterMetadataModelLoading value)?  loading,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LetterMetadataModelData() when data != null:
return data(_that);case LetterMetadataModelLoading() when loading != null:
return loading(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LetterMetadataModelData value)  data,required TResult Function( LetterMetadataModelLoading value)  loading,}){
final _that = this;
switch (_that) {
case LetterMetadataModelData():
return data(_that);case LetterMetadataModelLoading():
return loading(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LetterMetadataModelData value)?  data,TResult? Function( LetterMetadataModelLoading value)?  loading,}){
final _that = this;
switch (_that) {
case LetterMetadataModelData() when data != null:
return data(_that);case LetterMetadataModelLoading() when loading != null:
return loading(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String title,  String path,  int parentId,  DateTime updateAt)?  data,TResult Function()?  loading,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LetterMetadataModelData() when data != null:
return data(_that.title,_that.path,_that.parentId,_that.updateAt);case LetterMetadataModelLoading() when loading != null:
return loading();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String title,  String path,  int parentId,  DateTime updateAt)  data,required TResult Function()  loading,}) {final _that = this;
switch (_that) {
case LetterMetadataModelData():
return data(_that.title,_that.path,_that.parentId,_that.updateAt);case LetterMetadataModelLoading():
return loading();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String title,  String path,  int parentId,  DateTime updateAt)?  data,TResult? Function()?  loading,}) {final _that = this;
switch (_that) {
case LetterMetadataModelData() when data != null:
return data(_that.title,_that.path,_that.parentId,_that.updateAt);case LetterMetadataModelLoading() when loading != null:
return loading();case _:
  return null;

}
}

}

/// @nodoc


class LetterMetadataModelData implements LetterMetadataModel {
  const LetterMetadataModelData({required this.title, required this.path, required this.parentId, required this.updateAt});
  

 final  String title;
 final  String path;
 final  int parentId;
 final  DateTime updateAt;

/// Create a copy of LetterMetadataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LetterMetadataModelDataCopyWith<LetterMetadataModelData> get copyWith => _$LetterMetadataModelDataCopyWithImpl<LetterMetadataModelData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LetterMetadataModelData&&(identical(other.title, title) || other.title == title)&&(identical(other.path, path) || other.path == path)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt));
}


@override
int get hashCode => Object.hash(runtimeType,title,path,parentId,updateAt);

@override
String toString() {
  return 'LetterMetadataModel.data(title: $title, path: $path, parentId: $parentId, updateAt: $updateAt)';
}


}

/// @nodoc
abstract mixin class $LetterMetadataModelDataCopyWith<$Res> implements $LetterMetadataModelCopyWith<$Res> {
  factory $LetterMetadataModelDataCopyWith(LetterMetadataModelData value, $Res Function(LetterMetadataModelData) _then) = _$LetterMetadataModelDataCopyWithImpl;
@useResult
$Res call({
 String title, String path, int parentId, DateTime updateAt
});




}
/// @nodoc
class _$LetterMetadataModelDataCopyWithImpl<$Res>
    implements $LetterMetadataModelDataCopyWith<$Res> {
  _$LetterMetadataModelDataCopyWithImpl(this._self, this._then);

  final LetterMetadataModelData _self;
  final $Res Function(LetterMetadataModelData) _then;

/// Create a copy of LetterMetadataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? path = null,Object? parentId = null,Object? updateAt = null,}) {
  return _then(LetterMetadataModelData(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int,updateAt: null == updateAt ? _self.updateAt : updateAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class LetterMetadataModelLoading implements LetterMetadataModel {
  const LetterMetadataModelLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LetterMetadataModelLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LetterMetadataModel.loading()';
}


}




// dart format on
