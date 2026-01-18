// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'frequency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Frequency {

 int get value; FrequencyUnit get unit;
/// Create a copy of Frequency
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FrequencyCopyWith<Frequency> get copyWith => _$FrequencyCopyWithImpl<Frequency>(this as Frequency, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Frequency&&(identical(other.value, value) || other.value == value)&&(identical(other.unit, unit) || other.unit == unit));
}


@override
int get hashCode => Object.hash(runtimeType,value,unit);



}

/// @nodoc
abstract mixin class $FrequencyCopyWith<$Res>  {
  factory $FrequencyCopyWith(Frequency value, $Res Function(Frequency) _then) = _$FrequencyCopyWithImpl;
@useResult
$Res call({
 int value, FrequencyUnit unit
});




}
/// @nodoc
class _$FrequencyCopyWithImpl<$Res>
    implements $FrequencyCopyWith<$Res> {
  _$FrequencyCopyWithImpl(this._self, this._then);

  final Frequency _self;
  final $Res Function(Frequency) _then;

/// Create a copy of Frequency
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? unit = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as FrequencyUnit,
  ));
}

}



/// @nodoc


class _Frequency extends Frequency {
  const _Frequency(this.value, this.unit): super._();
  

@override final  int value;
@override final  FrequencyUnit unit;

/// Create a copy of Frequency
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FrequencyCopyWith<_Frequency> get copyWith => __$FrequencyCopyWithImpl<_Frequency>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Frequency&&(identical(other.value, value) || other.value == value)&&(identical(other.unit, unit) || other.unit == unit));
}


@override
int get hashCode => Object.hash(runtimeType,value,unit);



}

/// @nodoc
abstract mixin class _$FrequencyCopyWith<$Res> implements $FrequencyCopyWith<$Res> {
  factory _$FrequencyCopyWith(_Frequency value, $Res Function(_Frequency) _then) = __$FrequencyCopyWithImpl;
@override @useResult
$Res call({
 int value, FrequencyUnit unit
});




}
/// @nodoc
class __$FrequencyCopyWithImpl<$Res>
    implements _$FrequencyCopyWith<$Res> {
  __$FrequencyCopyWithImpl(this._self, this._then);

  final _Frequency _self;
  final $Res Function(_Frequency) _then;

/// Create a copy of Frequency
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? unit = null,}) {
  return _then(_Frequency(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as FrequencyUnit,
  ));
}


}

// dart format on
