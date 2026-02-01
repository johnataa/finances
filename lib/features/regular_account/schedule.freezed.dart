// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Schedule {

 Meta get meta; Name get name; Money get amount; Frequency get frequency; ScheduleType get type; DateTime get startDate; RegularAccount get account; Category get category; DateTime? get endDate;
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleCopyWith<Schedule> get copyWith => _$ScheduleCopyWithImpl<Schedule>(this as Schedule, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Schedule&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.type, type) || other.type == type)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.account, account) || other.account == account)&&(identical(other.category, category) || other.category == category)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,meta,name,amount,frequency,type,startDate,account,category,endDate);

@override
String toString() {
  return 'Schedule(meta: $meta, name: $name, amount: $amount, frequency: $frequency, type: $type, startDate: $startDate, account: $account, category: $category, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $ScheduleCopyWith<$Res>  {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) _then) = _$ScheduleCopyWithImpl;
@useResult
$Res call({
 Meta meta, Name name, Money amount, Frequency frequency, ScheduleType type, DateTime startDate, RegularAccount account, Category category, DateTime? endDate
});


$MetaCopyWith<$Res> get meta;$NameCopyWith<$Res> get name;$MoneyCopyWith<$Res> get amount;$FrequencyCopyWith<$Res> get frequency;$RegularAccountCopyWith<$Res> get account;$CategoryCopyWith<$Res> get category;

}
/// @nodoc
class _$ScheduleCopyWithImpl<$Res>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._self, this._then);

  final Schedule _self;
  final $Res Function(Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meta = null,Object? name = null,Object? amount = null,Object? frequency = null,Object? type = null,Object? startDate = null,Object? account = null,Object? category = null,Object? endDate = freezed,}) {
  return _then(_self.copyWith(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as Frequency,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ScheduleType,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as RegularAccount,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res> get name {
  
  return $NameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FrequencyCopyWith<$Res> get frequency {
  
  return $FrequencyCopyWith<$Res>(_self.frequency, (value) {
    return _then(_self.copyWith(frequency: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegularAccountCopyWith<$Res> get account {
  
  return $RegularAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res> get category {
  
  return $CategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [Schedule].
extension SchedulePatterns on Schedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Schedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Schedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Schedule value)  $default,){
final _that = this;
switch (_that) {
case _Schedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Schedule value)?  $default,){
final _that = this;
switch (_that) {
case _Schedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Meta meta,  Name name,  Money amount,  Frequency frequency,  ScheduleType type,  DateTime startDate,  RegularAccount account,  Category category,  DateTime? endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Schedule() when $default != null:
return $default(_that.meta,_that.name,_that.amount,_that.frequency,_that.type,_that.startDate,_that.account,_that.category,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Meta meta,  Name name,  Money amount,  Frequency frequency,  ScheduleType type,  DateTime startDate,  RegularAccount account,  Category category,  DateTime? endDate)  $default,) {final _that = this;
switch (_that) {
case _Schedule():
return $default(_that.meta,_that.name,_that.amount,_that.frequency,_that.type,_that.startDate,_that.account,_that.category,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Meta meta,  Name name,  Money amount,  Frequency frequency,  ScheduleType type,  DateTime startDate,  RegularAccount account,  Category category,  DateTime? endDate)?  $default,) {final _that = this;
switch (_that) {
case _Schedule() when $default != null:
return $default(_that.meta,_that.name,_that.amount,_that.frequency,_that.type,_that.startDate,_that.account,_that.category,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc


class _Schedule implements Schedule {
  const _Schedule({this.meta = Meta.empty, required this.name, required this.amount, required this.frequency, required this.type, required this.startDate, required this.account, required this.category, this.endDate});
  

@override@JsonKey() final  Meta meta;
@override final  Name name;
@override final  Money amount;
@override final  Frequency frequency;
@override final  ScheduleType type;
@override final  DateTime startDate;
@override final  RegularAccount account;
@override final  Category category;
@override final  DateTime? endDate;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleCopyWith<_Schedule> get copyWith => __$ScheduleCopyWithImpl<_Schedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Schedule&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.type, type) || other.type == type)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.account, account) || other.account == account)&&(identical(other.category, category) || other.category == category)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,meta,name,amount,frequency,type,startDate,account,category,endDate);

@override
String toString() {
  return 'Schedule(meta: $meta, name: $name, amount: $amount, frequency: $frequency, type: $type, startDate: $startDate, account: $account, category: $category, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$ScheduleCopyWith(_Schedule value, $Res Function(_Schedule) _then) = __$ScheduleCopyWithImpl;
@override @useResult
$Res call({
 Meta meta, Name name, Money amount, Frequency frequency, ScheduleType type, DateTime startDate, RegularAccount account, Category category, DateTime? endDate
});


@override $MetaCopyWith<$Res> get meta;@override $NameCopyWith<$Res> get name;@override $MoneyCopyWith<$Res> get amount;@override $FrequencyCopyWith<$Res> get frequency;@override $RegularAccountCopyWith<$Res> get account;@override $CategoryCopyWith<$Res> get category;

}
/// @nodoc
class __$ScheduleCopyWithImpl<$Res>
    implements _$ScheduleCopyWith<$Res> {
  __$ScheduleCopyWithImpl(this._self, this._then);

  final _Schedule _self;
  final $Res Function(_Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meta = null,Object? name = null,Object? amount = null,Object? frequency = null,Object? type = null,Object? startDate = null,Object? account = null,Object? category = null,Object? endDate = freezed,}) {
  return _then(_Schedule(
meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as Frequency,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ScheduleType,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as RegularAccount,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res> get name {
  
  return $NameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FrequencyCopyWith<$Res> get frequency {
  
  return $FrequencyCopyWith<$Res>(_self.frequency, (value) {
    return _then(_self.copyWith(frequency: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegularAccountCopyWith<$Res> get account {
  
  return $RegularAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res> get category {
  
  return $CategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

// dart format on
