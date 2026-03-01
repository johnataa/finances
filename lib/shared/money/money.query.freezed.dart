// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money.query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MoneyFilter {

 String get amount; int? get currency;
/// Create a copy of MoneyFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoneyFilterCopyWith<MoneyFilter> get copyWith => _$MoneyFilterCopyWithImpl<MoneyFilter>(this as MoneyFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoneyFilter&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode => Object.hash(runtimeType,amount,currency);

@override
String toString() {
  return 'MoneyFilter(amount: $amount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $MoneyFilterCopyWith<$Res>  {
  factory $MoneyFilterCopyWith(MoneyFilter value, $Res Function(MoneyFilter) _then) = _$MoneyFilterCopyWithImpl;
@useResult
$Res call({
 String amount, int? currency
});




}
/// @nodoc
class _$MoneyFilterCopyWithImpl<$Res>
    implements $MoneyFilterCopyWith<$Res> {
  _$MoneyFilterCopyWithImpl(this._self, this._then);

  final MoneyFilter _self;
  final $Res Function(MoneyFilter) _then;

/// Create a copy of MoneyFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? currency = freezed,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MoneyFilter].
extension MoneyFilterPatterns on MoneyFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MoneyEquals value)?  equals,TResult Function( MoneyGreaterThan value)?  greaterThan,TResult Function( MoneyLessThan value)?  lessThan,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MoneyEquals() when equals != null:
return equals(_that);case MoneyGreaterThan() when greaterThan != null:
return greaterThan(_that);case MoneyLessThan() when lessThan != null:
return lessThan(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MoneyEquals value)  equals,required TResult Function( MoneyGreaterThan value)  greaterThan,required TResult Function( MoneyLessThan value)  lessThan,}){
final _that = this;
switch (_that) {
case MoneyEquals():
return equals(_that);case MoneyGreaterThan():
return greaterThan(_that);case MoneyLessThan():
return lessThan(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MoneyEquals value)?  equals,TResult? Function( MoneyGreaterThan value)?  greaterThan,TResult? Function( MoneyLessThan value)?  lessThan,}){
final _that = this;
switch (_that) {
case MoneyEquals() when equals != null:
return equals(_that);case MoneyGreaterThan() when greaterThan != null:
return greaterThan(_that);case MoneyLessThan() when lessThan != null:
return lessThan(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String amount,  int? currency)?  equals,TResult Function( String amount,  int? currency)?  greaterThan,TResult Function( String amount,  int? currency)?  lessThan,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MoneyEquals() when equals != null:
return equals(_that.amount,_that.currency);case MoneyGreaterThan() when greaterThan != null:
return greaterThan(_that.amount,_that.currency);case MoneyLessThan() when lessThan != null:
return lessThan(_that.amount,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String amount,  int? currency)  equals,required TResult Function( String amount,  int? currency)  greaterThan,required TResult Function( String amount,  int? currency)  lessThan,}) {final _that = this;
switch (_that) {
case MoneyEquals():
return equals(_that.amount,_that.currency);case MoneyGreaterThan():
return greaterThan(_that.amount,_that.currency);case MoneyLessThan():
return lessThan(_that.amount,_that.currency);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String amount,  int? currency)?  equals,TResult? Function( String amount,  int? currency)?  greaterThan,TResult? Function( String amount,  int? currency)?  lessThan,}) {final _that = this;
switch (_that) {
case MoneyEquals() when equals != null:
return equals(_that.amount,_that.currency);case MoneyGreaterThan() when greaterThan != null:
return greaterThan(_that.amount,_that.currency);case MoneyLessThan() when lessThan != null:
return lessThan(_that.amount,_that.currency);case _:
  return null;

}
}

}

/// @nodoc


class MoneyEquals implements MoneyFilter {
  const MoneyEquals({required this.amount, this.currency});
  

@override final  String amount;
@override final  int? currency;

/// Create a copy of MoneyFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoneyEqualsCopyWith<MoneyEquals> get copyWith => _$MoneyEqualsCopyWithImpl<MoneyEquals>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoneyEquals&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode => Object.hash(runtimeType,amount,currency);

@override
String toString() {
  return 'MoneyFilter.equals(amount: $amount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $MoneyEqualsCopyWith<$Res> implements $MoneyFilterCopyWith<$Res> {
  factory $MoneyEqualsCopyWith(MoneyEquals value, $Res Function(MoneyEquals) _then) = _$MoneyEqualsCopyWithImpl;
@override @useResult
$Res call({
 String amount, int? currency
});




}
/// @nodoc
class _$MoneyEqualsCopyWithImpl<$Res>
    implements $MoneyEqualsCopyWith<$Res> {
  _$MoneyEqualsCopyWithImpl(this._self, this._then);

  final MoneyEquals _self;
  final $Res Function(MoneyEquals) _then;

/// Create a copy of MoneyFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? currency = freezed,}) {
  return _then(MoneyEquals(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class MoneyGreaterThan implements MoneyFilter {
  const MoneyGreaterThan({required this.amount, this.currency});
  

@override final  String amount;
@override final  int? currency;

/// Create a copy of MoneyFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoneyGreaterThanCopyWith<MoneyGreaterThan> get copyWith => _$MoneyGreaterThanCopyWithImpl<MoneyGreaterThan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoneyGreaterThan&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode => Object.hash(runtimeType,amount,currency);

@override
String toString() {
  return 'MoneyFilter.greaterThan(amount: $amount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $MoneyGreaterThanCopyWith<$Res> implements $MoneyFilterCopyWith<$Res> {
  factory $MoneyGreaterThanCopyWith(MoneyGreaterThan value, $Res Function(MoneyGreaterThan) _then) = _$MoneyGreaterThanCopyWithImpl;
@override @useResult
$Res call({
 String amount, int? currency
});




}
/// @nodoc
class _$MoneyGreaterThanCopyWithImpl<$Res>
    implements $MoneyGreaterThanCopyWith<$Res> {
  _$MoneyGreaterThanCopyWithImpl(this._self, this._then);

  final MoneyGreaterThan _self;
  final $Res Function(MoneyGreaterThan) _then;

/// Create a copy of MoneyFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? currency = freezed,}) {
  return _then(MoneyGreaterThan(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class MoneyLessThan implements MoneyFilter {
  const MoneyLessThan({required this.amount, this.currency});
  

@override final  String amount;
@override final  int? currency;

/// Create a copy of MoneyFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoneyLessThanCopyWith<MoneyLessThan> get copyWith => _$MoneyLessThanCopyWithImpl<MoneyLessThan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoneyLessThan&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode => Object.hash(runtimeType,amount,currency);

@override
String toString() {
  return 'MoneyFilter.lessThan(amount: $amount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $MoneyLessThanCopyWith<$Res> implements $MoneyFilterCopyWith<$Res> {
  factory $MoneyLessThanCopyWith(MoneyLessThan value, $Res Function(MoneyLessThan) _then) = _$MoneyLessThanCopyWithImpl;
@override @useResult
$Res call({
 String amount, int? currency
});




}
/// @nodoc
class _$MoneyLessThanCopyWithImpl<$Res>
    implements $MoneyLessThanCopyWith<$Res> {
  _$MoneyLessThanCopyWithImpl(this._self, this._then);

  final MoneyLessThan _self;
  final $Res Function(MoneyLessThan) _then;

/// Create a copy of MoneyFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? currency = freezed,}) {
  return _then(MoneyLessThan(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
