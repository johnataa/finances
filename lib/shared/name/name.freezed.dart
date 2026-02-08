// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Name {

 String get value;
/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameCopyWith<Name> get copyWith => _$NameCopyWithImpl<Name>(this as Name, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Name&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'Name(value: $value)';
}


}

/// @nodoc
abstract mixin class $NameCopyWith<$Res>  {
  factory $NameCopyWith(Name value, $Res Function(Name) _then) = _$NameCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$NameCopyWithImpl<$Res>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._self, this._then);

  final Name _self;
  final $Res Function(Name) _then;

/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc


class _Name extends Name {
  const _Name(this.value): super._();
  

@override final  String value;

/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameCopyWith<_Name> get copyWith => __$NameCopyWithImpl<_Name>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Name&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'Name._create(value: $value)';
}


}

/// @nodoc
abstract mixin class _$NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$NameCopyWith(_Name value, $Res Function(_Name) _then) = __$NameCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$NameCopyWithImpl<$Res>
    implements _$NameCopyWith<$Res> {
  __$NameCopyWithImpl(this._self, this._then);

  final _Name _self;
  final $Res Function(_Name) _then;

/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Name(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
