// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_mock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EntityMock {

 Base get base; String get sillyProp;
/// Create a copy of EntityMock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityMockCopyWith<EntityMock> get copyWith => _$EntityMockCopyWithImpl<EntityMock>(this as EntityMock, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityMock&&(identical(other.base, base) || other.base == base)&&(identical(other.sillyProp, sillyProp) || other.sillyProp == sillyProp));
}


@override
int get hashCode => Object.hash(runtimeType,base,sillyProp);

@override
String toString() {
  return 'EntityMock(base: $base, sillyProp: $sillyProp)';
}


}

/// @nodoc
abstract mixin class $EntityMockCopyWith<$Res>  {
  factory $EntityMockCopyWith(EntityMock value, $Res Function(EntityMock) _then) = _$EntityMockCopyWithImpl;
@useResult
$Res call({
 Base base, String sillyProp
});


$BaseCopyWith<$Res> get base;

}
/// @nodoc
class _$EntityMockCopyWithImpl<$Res>
    implements $EntityMockCopyWith<$Res> {
  _$EntityMockCopyWithImpl(this._self, this._then);

  final EntityMock _self;
  final $Res Function(EntityMock) _then;

/// Create a copy of EntityMock
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? base = null,Object? sillyProp = null,}) {
  return _then(_self.copyWith(
base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as Base,sillyProp: null == sillyProp ? _self.sillyProp : sillyProp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of EntityMock
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseCopyWith<$Res> get base {
  
  return $BaseCopyWith<$Res>(_self.base, (value) {
    return _then(_self.copyWith(base: value));
  });
}
}


/// Adds pattern-matching-related methods to [EntityMock].
extension EntityMockPatterns on EntityMock {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntityMock value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntityMock() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntityMock value)  $default,){
final _that = this;
switch (_that) {
case _EntityMock():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntityMock value)?  $default,){
final _that = this;
switch (_that) {
case _EntityMock() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Base base,  String sillyProp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntityMock() when $default != null:
return $default(_that.base,_that.sillyProp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Base base,  String sillyProp)  $default,) {final _that = this;
switch (_that) {
case _EntityMock():
return $default(_that.base,_that.sillyProp);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Base base,  String sillyProp)?  $default,) {final _that = this;
switch (_that) {
case _EntityMock() when $default != null:
return $default(_that.base,_that.sillyProp);case _:
  return null;

}
}

}

/// @nodoc


class _EntityMock extends EntityMock {
  const _EntityMock({this.base = Base.empty, required this.sillyProp}): super._();
  

@override@JsonKey() final  Base base;
@override final  String sillyProp;

/// Create a copy of EntityMock
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityMockCopyWith<_EntityMock> get copyWith => __$EntityMockCopyWithImpl<_EntityMock>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityMock&&(identical(other.base, base) || other.base == base)&&(identical(other.sillyProp, sillyProp) || other.sillyProp == sillyProp));
}


@override
int get hashCode => Object.hash(runtimeType,base,sillyProp);

@override
String toString() {
  return 'EntityMock(base: $base, sillyProp: $sillyProp)';
}


}

/// @nodoc
abstract mixin class _$EntityMockCopyWith<$Res> implements $EntityMockCopyWith<$Res> {
  factory _$EntityMockCopyWith(_EntityMock value, $Res Function(_EntityMock) _then) = __$EntityMockCopyWithImpl;
@override @useResult
$Res call({
 Base base, String sillyProp
});


@override $BaseCopyWith<$Res> get base;

}
/// @nodoc
class __$EntityMockCopyWithImpl<$Res>
    implements _$EntityMockCopyWith<$Res> {
  __$EntityMockCopyWithImpl(this._self, this._then);

  final _EntityMock _self;
  final $Res Function(_EntityMock) _then;

/// Create a copy of EntityMock
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? base = null,Object? sillyProp = null,}) {
  return _then(_EntityMock(
base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as Base,sillyProp: null == sillyProp ? _self.sillyProp : sillyProp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of EntityMock
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseCopyWith<$Res> get base {
  
  return $BaseCopyWith<$Res>(_self.base, (value) {
    return _then(_self.copyWith(base: value));
  });
}
}

// dart format on
