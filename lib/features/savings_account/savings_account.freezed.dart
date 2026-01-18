// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'savings_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavingsAccount {

 BaseAccount get base; SavingsGoal get goal; Money? get amountToCover; int? get coverageInMonth;
/// Create a copy of SavingsAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavingsAccountCopyWith<SavingsAccount> get copyWith => _$SavingsAccountCopyWithImpl<SavingsAccount>(this as SavingsAccount, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavingsAccount&&(identical(other.base, base) || other.base == base)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.amountToCover, amountToCover) || other.amountToCover == amountToCover)&&(identical(other.coverageInMonth, coverageInMonth) || other.coverageInMonth == coverageInMonth));
}


@override
int get hashCode => Object.hash(runtimeType,base,goal,amountToCover,coverageInMonth);

@override
String toString() {
  return 'SavingsAccount(base: $base, goal: $goal, amountToCover: $amountToCover, coverageInMonth: $coverageInMonth)';
}


}

/// @nodoc
abstract mixin class $SavingsAccountCopyWith<$Res>  {
  factory $SavingsAccountCopyWith(SavingsAccount value, $Res Function(SavingsAccount) _then) = _$SavingsAccountCopyWithImpl;
@useResult
$Res call({
 BaseAccount base, SavingsGoal goal, Money? amountToCover, int? coverageInMonth
});


$BaseAccountCopyWith<$Res> get base;$MoneyCopyWith<$Res>? get amountToCover;

}
/// @nodoc
class _$SavingsAccountCopyWithImpl<$Res>
    implements $SavingsAccountCopyWith<$Res> {
  _$SavingsAccountCopyWithImpl(this._self, this._then);

  final SavingsAccount _self;
  final $Res Function(SavingsAccount) _then;

/// Create a copy of SavingsAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? base = null,Object? goal = null,Object? amountToCover = freezed,Object? coverageInMonth = freezed,}) {
  return _then(_self.copyWith(
base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as BaseAccount,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as SavingsGoal,amountToCover: freezed == amountToCover ? _self.amountToCover : amountToCover // ignore: cast_nullable_to_non_nullable
as Money?,coverageInMonth: freezed == coverageInMonth ? _self.coverageInMonth : coverageInMonth // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of SavingsAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseAccountCopyWith<$Res> get base {
  
  return $BaseAccountCopyWith<$Res>(_self.base, (value) {
    return _then(_self.copyWith(base: value));
  });
}/// Create a copy of SavingsAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get amountToCover {
    if (_self.amountToCover == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.amountToCover!, (value) {
    return _then(_self.copyWith(amountToCover: value));
  });
}
}


/// Adds pattern-matching-related methods to [SavingsAccount].
extension SavingsAccountPatterns on SavingsAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavingsAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavingsAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavingsAccount value)  $default,){
final _that = this;
switch (_that) {
case _SavingsAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavingsAccount value)?  $default,){
final _that = this;
switch (_that) {
case _SavingsAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseAccount base,  SavingsGoal goal,  Money? amountToCover,  int? coverageInMonth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavingsAccount() when $default != null:
return $default(_that.base,_that.goal,_that.amountToCover,_that.coverageInMonth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseAccount base,  SavingsGoal goal,  Money? amountToCover,  int? coverageInMonth)  $default,) {final _that = this;
switch (_that) {
case _SavingsAccount():
return $default(_that.base,_that.goal,_that.amountToCover,_that.coverageInMonth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseAccount base,  SavingsGoal goal,  Money? amountToCover,  int? coverageInMonth)?  $default,) {final _that = this;
switch (_that) {
case _SavingsAccount() when $default != null:
return $default(_that.base,_that.goal,_that.amountToCover,_that.coverageInMonth);case _:
  return null;

}
}

}

/// @nodoc


class _SavingsAccount extends SavingsAccount {
  const _SavingsAccount({required this.base, required this.goal, this.amountToCover, this.coverageInMonth}): super._();
  

@override final  BaseAccount base;
@override final  SavingsGoal goal;
@override final  Money? amountToCover;
@override final  int? coverageInMonth;

/// Create a copy of SavingsAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavingsAccountCopyWith<_SavingsAccount> get copyWith => __$SavingsAccountCopyWithImpl<_SavingsAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavingsAccount&&(identical(other.base, base) || other.base == base)&&(identical(other.goal, goal) || other.goal == goal)&&(identical(other.amountToCover, amountToCover) || other.amountToCover == amountToCover)&&(identical(other.coverageInMonth, coverageInMonth) || other.coverageInMonth == coverageInMonth));
}


@override
int get hashCode => Object.hash(runtimeType,base,goal,amountToCover,coverageInMonth);

@override
String toString() {
  return 'SavingsAccount(base: $base, goal: $goal, amountToCover: $amountToCover, coverageInMonth: $coverageInMonth)';
}


}

/// @nodoc
abstract mixin class _$SavingsAccountCopyWith<$Res> implements $SavingsAccountCopyWith<$Res> {
  factory _$SavingsAccountCopyWith(_SavingsAccount value, $Res Function(_SavingsAccount) _then) = __$SavingsAccountCopyWithImpl;
@override @useResult
$Res call({
 BaseAccount base, SavingsGoal goal, Money? amountToCover, int? coverageInMonth
});


@override $BaseAccountCopyWith<$Res> get base;@override $MoneyCopyWith<$Res>? get amountToCover;

}
/// @nodoc
class __$SavingsAccountCopyWithImpl<$Res>
    implements _$SavingsAccountCopyWith<$Res> {
  __$SavingsAccountCopyWithImpl(this._self, this._then);

  final _SavingsAccount _self;
  final $Res Function(_SavingsAccount) _then;

/// Create a copy of SavingsAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? base = null,Object? goal = null,Object? amountToCover = freezed,Object? coverageInMonth = freezed,}) {
  return _then(_SavingsAccount(
base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as BaseAccount,goal: null == goal ? _self.goal : goal // ignore: cast_nullable_to_non_nullable
as SavingsGoal,amountToCover: freezed == amountToCover ? _self.amountToCover : amountToCover // ignore: cast_nullable_to_non_nullable
as Money?,coverageInMonth: freezed == coverageInMonth ? _self.coverageInMonth : coverageInMonth // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of SavingsAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseAccountCopyWith<$Res> get base {
  
  return $BaseAccountCopyWith<$Res>(_self.base, (value) {
    return _then(_self.copyWith(base: value));
  });
}/// Create a copy of SavingsAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get amountToCover {
    if (_self.amountToCover == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.amountToCover!, (value) {
    return _then(_self.copyWith(amountToCover: value));
  });
}
}

// dart format on
