// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Money {

 Currency get currency; Decimal get amount;
/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoneyCopyWith<Money> get copyWith => _$MoneyCopyWithImpl<Money>(this as Money, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Money&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,currency,amount);



}

/// @nodoc
abstract mixin class $MoneyCopyWith<$Res>  {
  factory $MoneyCopyWith(Money value, $Res Function(Money) _then) = _$MoneyCopyWithImpl;
@useResult
$Res call({
 Currency currency, Decimal amount
});




}
/// @nodoc
class _$MoneyCopyWithImpl<$Res>
    implements $MoneyCopyWith<$Res> {
  _$MoneyCopyWithImpl(this._self, this._then);

  final Money _self;
  final $Res Function(Money) _then;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currency = null,Object? amount = null,}) {
  return _then(_self.copyWith(
currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}



/// @nodoc


class _Money extends Money {
  const _Money(this.currency, this.amount): super._();
  

@override final  Currency currency;
@override final  Decimal amount;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoneyCopyWith<_Money> get copyWith => __$MoneyCopyWithImpl<_Money>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Money&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,currency,amount);



}

/// @nodoc
abstract mixin class _$MoneyCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory _$MoneyCopyWith(_Money value, $Res Function(_Money) _then) = __$MoneyCopyWithImpl;
@override @useResult
$Res call({
 Currency currency, Decimal amount
});




}
/// @nodoc
class __$MoneyCopyWithImpl<$Res>
    implements _$MoneyCopyWith<$Res> {
  __$MoneyCopyWithImpl(this._self, this._then);

  final _Money _self;
  final $Res Function(_Money) _then;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currency = null,Object? amount = null,}) {
  return _then(_Money(
null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency,null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}

// dart format on
