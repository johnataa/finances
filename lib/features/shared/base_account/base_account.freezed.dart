// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseAccount {

 EntityMeta get meta; Name get name; Money get balance; List<Transaction> get transactions;
/// Create a copy of BaseAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseAccountCopyWith<BaseAccount> get copyWith => _$BaseAccountCopyWithImpl<BaseAccount>(this as BaseAccount, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseAccount&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other.transactions, transactions));
}


@override
int get hashCode => Object.hash(runtimeType,meta,name,balance,const DeepCollectionEquality().hash(transactions));

@override
String toString() {
  return 'BaseAccount(meta: $meta, name: $name, balance: $balance, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $BaseAccountCopyWith<$Res>  {
  factory $BaseAccountCopyWith(BaseAccount value, $Res Function(BaseAccount) _then) = _$BaseAccountCopyWithImpl;
@useResult
$Res call({
 EntityMeta meta, Name name, Money balance, List<Transaction> transactions
});


$EntityMetaCopyWith<$Res> get meta;$NameCopyWith<$Res> get name;$MoneyCopyWith<$Res> get balance;

}
/// @nodoc
class _$BaseAccountCopyWithImpl<$Res>
    implements $BaseAccountCopyWith<$Res> {
  _$BaseAccountCopyWithImpl(this._self, this._then);

  final BaseAccount _self;
  final $Res Function(BaseAccount) _then;

/// Create a copy of BaseAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? name = null,Object? balance = null,Object? transactions = null,}) {
  return _then(_self.copyWith(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as EntityMeta,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Money,transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,
  ));
}
/// Create a copy of BaseAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityMetaCopyWith<$Res> get meta {
  
  return $EntityMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of BaseAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res> get name {
  
  return $NameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of BaseAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get balance {
  
  return $MoneyCopyWith<$Res>(_self.balance, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}


/// Adds pattern-matching-related methods to [BaseAccount].
extension BaseAccountPatterns on BaseAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseAccount value)  $default,){
final _that = this;
switch (_that) {
case _BaseAccount():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseAccount value)?  $default,){
final _that = this;
switch (_that) {
case _BaseAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EntityMeta meta,  Name name,  Money balance,  List<Transaction> transactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseAccount() when $default != null:
return $default(_that.meta,_that.name,_that.balance,_that.transactions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EntityMeta meta,  Name name,  Money balance,  List<Transaction> transactions)  $default,) {final _that = this;
switch (_that) {
case _BaseAccount():
return $default(_that.meta,_that.name,_that.balance,_that.transactions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EntityMeta meta,  Name name,  Money balance,  List<Transaction> transactions)?  $default,) {final _that = this;
switch (_that) {
case _BaseAccount() when $default != null:
return $default(_that.meta,_that.name,_that.balance,_that.transactions);case _:
  return null;

}
}

}

/// @nodoc


class _BaseAccount implements BaseAccount {
  const _BaseAccount({this.meta = EntityMeta.empty, required this.name, required this.balance, final  List<Transaction> transactions = const []}): _transactions = transactions;
  

@override@JsonKey() final  EntityMeta meta;
@override final  Name name;
@override final  Money balance;
 final  List<Transaction> _transactions;
@override@JsonKey() List<Transaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of BaseAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseAccountCopyWith<_BaseAccount> get copyWith => __$BaseAccountCopyWithImpl<_BaseAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseAccount&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}


@override
int get hashCode => Object.hash(runtimeType,meta,name,balance,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'BaseAccount(meta: $meta, name: $name, balance: $balance, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$BaseAccountCopyWith<$Res> implements $BaseAccountCopyWith<$Res> {
  factory _$BaseAccountCopyWith(_BaseAccount value, $Res Function(_BaseAccount) _then) = __$BaseAccountCopyWithImpl;
@override @useResult
$Res call({
 EntityMeta meta, Name name, Money balance, List<Transaction> transactions
});


@override $EntityMetaCopyWith<$Res> get meta;@override $NameCopyWith<$Res> get name;@override $MoneyCopyWith<$Res> get balance;

}
/// @nodoc
class __$BaseAccountCopyWithImpl<$Res>
    implements _$BaseAccountCopyWith<$Res> {
  __$BaseAccountCopyWithImpl(this._self, this._then);

  final _BaseAccount _self;
  final $Res Function(_BaseAccount) _then;

/// Create a copy of BaseAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? name = null,Object? balance = null,Object? transactions = null,}) {
  return _then(_BaseAccount(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as EntityMeta,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Money,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,
  ));
}

/// Create a copy of BaseAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityMetaCopyWith<$Res> get meta {
  
  return $EntityMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of BaseAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res> get name {
  
  return $NameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of BaseAccount
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
