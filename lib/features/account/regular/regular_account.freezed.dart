// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regular_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegularAccount {

 Meta get meta; Name get name; Money get balance; List<Schedule> get schedules; List<Transaction> get transactions;
/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegularAccountCopyWith<RegularAccount> get copyWith => _$RegularAccountCopyWithImpl<RegularAccount>(this as RegularAccount, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegularAccount&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other.schedules, schedules)&&const DeepCollectionEquality().equals(other.transactions, transactions));
}


@override
int get hashCode => Object.hash(runtimeType,meta,name,balance,const DeepCollectionEquality().hash(schedules),const DeepCollectionEquality().hash(transactions));

@override
String toString() {
  return 'RegularAccount(meta: $meta, name: $name, balance: $balance, schedules: $schedules, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $RegularAccountCopyWith<$Res>  {
  factory $RegularAccountCopyWith(RegularAccount value, $Res Function(RegularAccount) _then) = _$RegularAccountCopyWithImpl;
@useResult
$Res call({
 Meta meta, Name name, Money balance, List<Schedule> schedules, List<Transaction> transactions
});


$MetaCopyWith<$Res> get meta;$NameCopyWith<$Res> get name;$MoneyCopyWith<$Res> get balance;

}
/// @nodoc
class _$RegularAccountCopyWithImpl<$Res>
    implements $RegularAccountCopyWith<$Res> {
  _$RegularAccountCopyWithImpl(this._self, this._then);

  final RegularAccount _self;
  final $Res Function(RegularAccount) _then;

/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? name = null,Object? balance = null,Object? schedules = null,Object? transactions = null,}) {
  return _then(_self.copyWith(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Money,schedules: null == schedules ? _self.schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<Schedule>,transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,
  ));
}
/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res> get name {
  
  return $NameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get balance {
  
  return $MoneyCopyWith<$Res>(_self.balance, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegularAccount].
extension RegularAccountPatterns on RegularAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegularAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegularAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegularAccount value)  $default,){
final _that = this;
switch (_that) {
case _RegularAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegularAccount value)?  $default,){
final _that = this;
switch (_that) {
case _RegularAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Meta meta,  Name name,  Money balance,  List<Schedule> schedules,  List<Transaction> transactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegularAccount() when $default != null:
return $default(_that.meta,_that.name,_that.balance,_that.schedules,_that.transactions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Meta meta,  Name name,  Money balance,  List<Schedule> schedules,  List<Transaction> transactions)  $default,) {final _that = this;
switch (_that) {
case _RegularAccount():
return $default(_that.meta,_that.name,_that.balance,_that.schedules,_that.transactions);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Meta meta,  Name name,  Money balance,  List<Schedule> schedules,  List<Transaction> transactions)?  $default,) {final _that = this;
switch (_that) {
case _RegularAccount() when $default != null:
return $default(_that.meta,_that.name,_that.balance,_that.schedules,_that.transactions);case _:
  return null;

}
}

}

/// @nodoc


class _RegularAccount extends RegularAccount {
  const _RegularAccount({this.meta = Meta.empty, required this.name, required this.balance, final  List<Schedule> schedules = const [], final  List<Transaction> transactions = const []}): _schedules = schedules,_transactions = transactions,super._();
  

@override@JsonKey() final  Meta meta;
@override final  Name name;
@override final  Money balance;
 final  List<Schedule> _schedules;
@override@JsonKey() List<Schedule> get schedules {
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedules);
}

 final  List<Transaction> _transactions;
@override@JsonKey() List<Transaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegularAccountCopyWith<_RegularAccount> get copyWith => __$RegularAccountCopyWithImpl<_RegularAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegularAccount&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other._schedules, _schedules)&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}


@override
int get hashCode => Object.hash(runtimeType,meta,name,balance,const DeepCollectionEquality().hash(_schedules),const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'RegularAccount(meta: $meta, name: $name, balance: $balance, schedules: $schedules, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$RegularAccountCopyWith<$Res> implements $RegularAccountCopyWith<$Res> {
  factory _$RegularAccountCopyWith(_RegularAccount value, $Res Function(_RegularAccount) _then) = __$RegularAccountCopyWithImpl;
@override @useResult
$Res call({
 Meta meta, Name name, Money balance, List<Schedule> schedules, List<Transaction> transactions
});


@override $MetaCopyWith<$Res> get meta;@override $NameCopyWith<$Res> get name;@override $MoneyCopyWith<$Res> get balance;

}
/// @nodoc
class __$RegularAccountCopyWithImpl<$Res>
    implements _$RegularAccountCopyWith<$Res> {
  __$RegularAccountCopyWithImpl(this._self, this._then);

  final _RegularAccount _self;
  final $Res Function(_RegularAccount) _then;

/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? name = null,Object? balance = null,Object? schedules = null,Object? transactions = null,}) {
  return _then(_RegularAccount(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Money,schedules: null == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<Schedule>,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,
  ));
}

/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res> get name {
  
  return $NameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get balance {
  
  return $MoneyCopyWith<$Res>(_self.balance, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}

// dart format on
