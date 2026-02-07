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

 BaseAccount get base; List<Schedule> get schedules;
/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegularAccountCopyWith<RegularAccount> get copyWith => _$RegularAccountCopyWithImpl<RegularAccount>(this as RegularAccount, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegularAccount&&(identical(other.base, base) || other.base == base)&&const DeepCollectionEquality().equals(other.schedules, schedules));
}


@override
int get hashCode => Object.hash(runtimeType,base,const DeepCollectionEquality().hash(schedules));

@override
String toString() {
  return 'RegularAccount(base: $base, schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class $RegularAccountCopyWith<$Res>  {
  factory $RegularAccountCopyWith(RegularAccount value, $Res Function(RegularAccount) _then) = _$RegularAccountCopyWithImpl;
@useResult
$Res call({
 BaseAccount base, List<Schedule> schedules
});


$BaseAccountCopyWith<$Res> get base;

}
/// @nodoc
class _$RegularAccountCopyWithImpl<$Res>
    implements $RegularAccountCopyWith<$Res> {
  _$RegularAccountCopyWithImpl(this._self, this._then);

  final RegularAccount _self;
  final $Res Function(RegularAccount) _then;

/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? base = null,Object? schedules = null,}) {
  return _then(_self.copyWith(
base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as BaseAccount,schedules: null == schedules ? _self.schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<Schedule>,
  ));
}
/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseAccountCopyWith<$Res> get base {
  
  return $BaseAccountCopyWith<$Res>(_self.base, (value) {
    return _then(_self.copyWith(base: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseAccount base,  List<Schedule> schedules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegularAccount() when $default != null:
return $default(_that.base,_that.schedules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseAccount base,  List<Schedule> schedules)  $default,) {final _that = this;
switch (_that) {
case _RegularAccount():
return $default(_that.base,_that.schedules);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseAccount base,  List<Schedule> schedules)?  $default,) {final _that = this;
switch (_that) {
case _RegularAccount() when $default != null:
return $default(_that.base,_that.schedules);case _:
  return null;

}
}

}

/// @nodoc


class _RegularAccount extends RegularAccount {
  const _RegularAccount({required this.base, final  List<Schedule> schedules = const []}): _schedules = schedules,super._();
  

@override final  BaseAccount base;
 final  List<Schedule> _schedules;
@override@JsonKey() List<Schedule> get schedules {
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedules);
}


/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegularAccountCopyWith<_RegularAccount> get copyWith => __$RegularAccountCopyWithImpl<_RegularAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegularAccount&&(identical(other.base, base) || other.base == base)&&const DeepCollectionEquality().equals(other._schedules, _schedules));
}


@override
int get hashCode => Object.hash(runtimeType,base,const DeepCollectionEquality().hash(_schedules));

@override
String toString() {
  return 'RegularAccount(base: $base, schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class _$RegularAccountCopyWith<$Res> implements $RegularAccountCopyWith<$Res> {
  factory _$RegularAccountCopyWith(_RegularAccount value, $Res Function(_RegularAccount) _then) = __$RegularAccountCopyWithImpl;
@override @useResult
$Res call({
 BaseAccount base, List<Schedule> schedules
});


@override $BaseAccountCopyWith<$Res> get base;

}
/// @nodoc
class __$RegularAccountCopyWithImpl<$Res>
    implements _$RegularAccountCopyWith<$Res> {
  __$RegularAccountCopyWithImpl(this._self, this._then);

  final _RegularAccount _self;
  final $Res Function(_RegularAccount) _then;

/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? base = null,Object? schedules = null,}) {
  return _then(_RegularAccount(
base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as BaseAccount,schedules: null == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<Schedule>,
  ));
}

/// Create a copy of RegularAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseAccountCopyWith<$Res> get base {
  
  return $BaseAccountCopyWith<$Res>(_self.base, (value) {
    return _then(_self.copyWith(base: value));
  });
}
}

// dart format on
