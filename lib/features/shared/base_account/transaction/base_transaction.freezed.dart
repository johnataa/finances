// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseTransaction {

 Name get name; Money get amount; TransactionType get type; TransactionStatus get status; DateTime? get date; String? get notes; EntityMeta get meta;
/// Create a copy of BaseTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseTransactionCopyWith<BaseTransaction> get copyWith => _$BaseTransactionCopyWithImpl<BaseTransaction>(this as BaseTransaction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseTransaction&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.date, date) || other.date == date)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,name,amount,type,status,date,notes,meta);

@override
String toString() {
  return 'BaseTransaction(name: $name, amount: $amount, type: $type, status: $status, date: $date, notes: $notes, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $BaseTransactionCopyWith<$Res>  {
  factory $BaseTransactionCopyWith(BaseTransaction value, $Res Function(BaseTransaction) _then) = _$BaseTransactionCopyWithImpl;
@useResult
$Res call({
 Name name, Money amount, TransactionType type, TransactionStatus status, DateTime? date, String? notes, EntityMeta meta
});


$NameCopyWith<$Res> get name;$MoneyCopyWith<$Res> get amount;$EntityMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$BaseTransactionCopyWithImpl<$Res>
    implements $BaseTransactionCopyWith<$Res> {
  _$BaseTransactionCopyWithImpl(this._self, this._then);

  final BaseTransaction _self;
  final $Res Function(BaseTransaction) _then;

/// Create a copy of BaseTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? amount = null,Object? type = null,Object? status = null,Object? date = freezed,Object? notes = freezed,Object? meta = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as EntityMeta,
  ));
}
/// Create a copy of BaseTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res> get name {
  
  return $NameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of BaseTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of BaseTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityMetaCopyWith<$Res> get meta {
  
  return $EntityMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [BaseTransaction].
extension BaseTransactionPatterns on BaseTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseTransaction value)  $default,){
final _that = this;
switch (_that) {
case _BaseTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _BaseTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Name name,  Money amount,  TransactionType type,  TransactionStatus status,  DateTime? date,  String? notes,  EntityMeta meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseTransaction() when $default != null:
return $default(_that.name,_that.amount,_that.type,_that.status,_that.date,_that.notes,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Name name,  Money amount,  TransactionType type,  TransactionStatus status,  DateTime? date,  String? notes,  EntityMeta meta)  $default,) {final _that = this;
switch (_that) {
case _BaseTransaction():
return $default(_that.name,_that.amount,_that.type,_that.status,_that.date,_that.notes,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Name name,  Money amount,  TransactionType type,  TransactionStatus status,  DateTime? date,  String? notes,  EntityMeta meta)?  $default,) {final _that = this;
switch (_that) {
case _BaseTransaction() when $default != null:
return $default(_that.name,_that.amount,_that.type,_that.status,_that.date,_that.notes,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _BaseTransaction implements BaseTransaction {
  const _BaseTransaction({required this.name, required this.amount, required this.type, this.status = TransactionStatus.pending, this.date, this.notes, this.meta = EntityMeta.empty});
  

@override final  Name name;
@override final  Money amount;
@override final  TransactionType type;
@override@JsonKey() final  TransactionStatus status;
@override final  DateTime? date;
@override final  String? notes;
@override@JsonKey() final  EntityMeta meta;

/// Create a copy of BaseTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseTransactionCopyWith<_BaseTransaction> get copyWith => __$BaseTransactionCopyWithImpl<_BaseTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseTransaction&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.date, date) || other.date == date)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,name,amount,type,status,date,notes,meta);

@override
String toString() {
  return 'BaseTransaction(name: $name, amount: $amount, type: $type, status: $status, date: $date, notes: $notes, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$BaseTransactionCopyWith<$Res> implements $BaseTransactionCopyWith<$Res> {
  factory _$BaseTransactionCopyWith(_BaseTransaction value, $Res Function(_BaseTransaction) _then) = __$BaseTransactionCopyWithImpl;
@override @useResult
$Res call({
 Name name, Money amount, TransactionType type, TransactionStatus status, DateTime? date, String? notes, EntityMeta meta
});


@override $NameCopyWith<$Res> get name;@override $MoneyCopyWith<$Res> get amount;@override $EntityMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$BaseTransactionCopyWithImpl<$Res>
    implements _$BaseTransactionCopyWith<$Res> {
  __$BaseTransactionCopyWithImpl(this._self, this._then);

  final _BaseTransaction _self;
  final $Res Function(_BaseTransaction) _then;

/// Create a copy of BaseTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? amount = null,Object? type = null,Object? status = null,Object? date = freezed,Object? notes = freezed,Object? meta = null,}) {
  return _then(_BaseTransaction(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as EntityMeta,
  ));
}

/// Create a copy of BaseTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res> get name {
  
  return $NameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of BaseTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of BaseTransaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityMetaCopyWith<$Res> get meta {
  
  return $EntityMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
