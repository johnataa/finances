// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Base {

 int get id; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of Base
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseCopyWith<Base> get copyWith => _$BaseCopyWithImpl<Base>(this as Base, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Base&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt);

@override
String toString() {
  return 'Base(id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BaseCopyWith<$Res>  {
  factory $BaseCopyWith(Base value, $Res Function(Base) _then) = _$BaseCopyWithImpl;
@useResult
$Res call({
 int id, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$BaseCopyWithImpl<$Res>
    implements $BaseCopyWith<$Res> {
  _$BaseCopyWithImpl(this._self, this._then);

  final Base _self;
  final $Res Function(Base) _then;

/// Create a copy of Base
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Base].
extension BasePatterns on Base {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Base value)?  create,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Base() when create != null:
return create(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Base value)  create,}){
final _that = this;
switch (_that) {
case _Base():
return create(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Base value)?  create,}){
final _that = this;
switch (_that) {
case _Base() when create != null:
return create(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id,  DateTime? createdAt,  DateTime? updatedAt)?  create,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Base() when create != null:
return create(_that.id,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id,  DateTime? createdAt,  DateTime? updatedAt)  create,}) {final _that = this;
switch (_that) {
case _Base():
return create(_that.id,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id,  DateTime? createdAt,  DateTime? updatedAt)?  create,}) {final _that = this;
switch (_that) {
case _Base() when create != null:
return create(_that.id,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Base extends Base {
  const _Base({this.id = 0, this.createdAt, this.updatedAt}): super._();
  

@override@JsonKey() final  int id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of Base
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseCopyWith<_Base> get copyWith => __$BaseCopyWithImpl<_Base>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Base&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt);

@override
String toString() {
  return 'Base.create(id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BaseCopyWith<$Res> implements $BaseCopyWith<$Res> {
  factory _$BaseCopyWith(_Base value, $Res Function(_Base) _then) = __$BaseCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$BaseCopyWithImpl<$Res>
    implements _$BaseCopyWith<$Res> {
  __$BaseCopyWithImpl(this._self, this._then);

  final _Base _self;
  final $Res Function(_Base) _then;

/// Create a copy of Base
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Base(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
