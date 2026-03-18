// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StringFilter {

 String get input;
/// Create a copy of StringFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StringFilterCopyWith<StringFilter> get copyWith => _$StringFilterCopyWithImpl<StringFilter>(this as StringFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StringFilter&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'StringFilter(input: $input)';
}


}

/// @nodoc
abstract mixin class $StringFilterCopyWith<$Res>  {
  factory $StringFilterCopyWith(StringFilter value, $Res Function(StringFilter) _then) = _$StringFilterCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class _$StringFilterCopyWithImpl<$Res>
    implements $StringFilterCopyWith<$Res> {
  _$StringFilterCopyWithImpl(this._self, this._then);

  final StringFilter _self;
  final $Res Function(StringFilter) _then;

/// Create a copy of StringFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StringFilter].
extension StringFilterPatterns on StringFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StringEquals value)?  equals,TResult Function( StringContains value)?  contains,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StringEquals() when equals != null:
return equals(_that);case StringContains() when contains != null:
return contains(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StringEquals value)  equals,required TResult Function( StringContains value)  contains,}){
final _that = this;
switch (_that) {
case StringEquals():
return equals(_that);case StringContains():
return contains(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StringEquals value)?  equals,TResult? Function( StringContains value)?  contains,}){
final _that = this;
switch (_that) {
case StringEquals() when equals != null:
return equals(_that);case StringContains() when contains != null:
return contains(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String input)?  equals,TResult Function( String input)?  contains,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StringEquals() when equals != null:
return equals(_that.input);case StringContains() when contains != null:
return contains(_that.input);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String input)  equals,required TResult Function( String input)  contains,}) {final _that = this;
switch (_that) {
case StringEquals():
return equals(_that.input);case StringContains():
return contains(_that.input);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String input)?  equals,TResult? Function( String input)?  contains,}) {final _that = this;
switch (_that) {
case StringEquals() when equals != null:
return equals(_that.input);case StringContains() when contains != null:
return contains(_that.input);case _:
  return null;

}
}

}

/// @nodoc


class StringEquals implements StringFilter {
  const StringEquals(this.input);
  

@override final  String input;

/// Create a copy of StringFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StringEqualsCopyWith<StringEquals> get copyWith => _$StringEqualsCopyWithImpl<StringEquals>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StringEquals&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'StringFilter.equals(input: $input)';
}


}

/// @nodoc
abstract mixin class $StringEqualsCopyWith<$Res> implements $StringFilterCopyWith<$Res> {
  factory $StringEqualsCopyWith(StringEquals value, $Res Function(StringEquals) _then) = _$StringEqualsCopyWithImpl;
@override @useResult
$Res call({
 String input
});




}
/// @nodoc
class _$StringEqualsCopyWithImpl<$Res>
    implements $StringEqualsCopyWith<$Res> {
  _$StringEqualsCopyWithImpl(this._self, this._then);

  final StringEquals _self;
  final $Res Function(StringEquals) _then;

/// Create a copy of StringFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(StringEquals(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StringContains implements StringFilter {
  const StringContains(this.input);
  

@override final  String input;

/// Create a copy of StringFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StringContainsCopyWith<StringContains> get copyWith => _$StringContainsCopyWithImpl<StringContains>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StringContains&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'StringFilter.contains(input: $input)';
}


}

/// @nodoc
abstract mixin class $StringContainsCopyWith<$Res> implements $StringFilterCopyWith<$Res> {
  factory $StringContainsCopyWith(StringContains value, $Res Function(StringContains) _then) = _$StringContainsCopyWithImpl;
@override @useResult
$Res call({
 String input
});




}
/// @nodoc
class _$StringContainsCopyWithImpl<$Res>
    implements $StringContainsCopyWith<$Res> {
  _$StringContainsCopyWithImpl(this._self, this._then);

  final StringContains _self;
  final $Res Function(StringContains) _then;

/// Create a copy of StringFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(StringContains(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$IntFilter {

 int get input;
/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntFilterCopyWith<IntFilter> get copyWith => _$IntFilterCopyWithImpl<IntFilter>(this as IntFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntFilter&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'IntFilter(input: $input)';
}


}

/// @nodoc
abstract mixin class $IntFilterCopyWith<$Res>  {
  factory $IntFilterCopyWith(IntFilter value, $Res Function(IntFilter) _then) = _$IntFilterCopyWithImpl;
@useResult
$Res call({
 int input
});




}
/// @nodoc
class _$IntFilterCopyWithImpl<$Res>
    implements $IntFilterCopyWith<$Res> {
  _$IntFilterCopyWithImpl(this._self, this._then);

  final IntFilter _self;
  final $Res Function(IntFilter) _then;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [IntFilter].
extension IntFilterPatterns on IntFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IntEquals value)?  equals,TResult Function( IntGreaterThan value)?  greaterThan,TResult Function( IntLessThan value)?  lessThan,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IntEquals() when equals != null:
return equals(_that);case IntGreaterThan() when greaterThan != null:
return greaterThan(_that);case IntLessThan() when lessThan != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IntEquals value)  equals,required TResult Function( IntGreaterThan value)  greaterThan,required TResult Function( IntLessThan value)  lessThan,}){
final _that = this;
switch (_that) {
case IntEquals():
return equals(_that);case IntGreaterThan():
return greaterThan(_that);case IntLessThan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IntEquals value)?  equals,TResult? Function( IntGreaterThan value)?  greaterThan,TResult? Function( IntLessThan value)?  lessThan,}){
final _that = this;
switch (_that) {
case IntEquals() when equals != null:
return equals(_that);case IntGreaterThan() when greaterThan != null:
return greaterThan(_that);case IntLessThan() when lessThan != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int input)?  equals,TResult Function( int input)?  greaterThan,TResult Function( int input)?  lessThan,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IntEquals() when equals != null:
return equals(_that.input);case IntGreaterThan() when greaterThan != null:
return greaterThan(_that.input);case IntLessThan() when lessThan != null:
return lessThan(_that.input);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int input)  equals,required TResult Function( int input)  greaterThan,required TResult Function( int input)  lessThan,}) {final _that = this;
switch (_that) {
case IntEquals():
return equals(_that.input);case IntGreaterThan():
return greaterThan(_that.input);case IntLessThan():
return lessThan(_that.input);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int input)?  equals,TResult? Function( int input)?  greaterThan,TResult? Function( int input)?  lessThan,}) {final _that = this;
switch (_that) {
case IntEquals() when equals != null:
return equals(_that.input);case IntGreaterThan() when greaterThan != null:
return greaterThan(_that.input);case IntLessThan() when lessThan != null:
return lessThan(_that.input);case _:
  return null;

}
}

}

/// @nodoc


class IntEquals implements IntFilter {
  const IntEquals(this.input);
  

@override final  int input;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntEqualsCopyWith<IntEquals> get copyWith => _$IntEqualsCopyWithImpl<IntEquals>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntEquals&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'IntFilter.equals(input: $input)';
}


}

/// @nodoc
abstract mixin class $IntEqualsCopyWith<$Res> implements $IntFilterCopyWith<$Res> {
  factory $IntEqualsCopyWith(IntEquals value, $Res Function(IntEquals) _then) = _$IntEqualsCopyWithImpl;
@override @useResult
$Res call({
 int input
});




}
/// @nodoc
class _$IntEqualsCopyWithImpl<$Res>
    implements $IntEqualsCopyWith<$Res> {
  _$IntEqualsCopyWithImpl(this._self, this._then);

  final IntEquals _self;
  final $Res Function(IntEquals) _then;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(IntEquals(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class IntGreaterThan implements IntFilter {
  const IntGreaterThan(this.input);
  

@override final  int input;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntGreaterThanCopyWith<IntGreaterThan> get copyWith => _$IntGreaterThanCopyWithImpl<IntGreaterThan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntGreaterThan&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'IntFilter.greaterThan(input: $input)';
}


}

/// @nodoc
abstract mixin class $IntGreaterThanCopyWith<$Res> implements $IntFilterCopyWith<$Res> {
  factory $IntGreaterThanCopyWith(IntGreaterThan value, $Res Function(IntGreaterThan) _then) = _$IntGreaterThanCopyWithImpl;
@override @useResult
$Res call({
 int input
});




}
/// @nodoc
class _$IntGreaterThanCopyWithImpl<$Res>
    implements $IntGreaterThanCopyWith<$Res> {
  _$IntGreaterThanCopyWithImpl(this._self, this._then);

  final IntGreaterThan _self;
  final $Res Function(IntGreaterThan) _then;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(IntGreaterThan(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class IntLessThan implements IntFilter {
  const IntLessThan(this.input);
  

@override final  int input;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntLessThanCopyWith<IntLessThan> get copyWith => _$IntLessThanCopyWithImpl<IntLessThan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntLessThan&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'IntFilter.lessThan(input: $input)';
}


}

/// @nodoc
abstract mixin class $IntLessThanCopyWith<$Res> implements $IntFilterCopyWith<$Res> {
  factory $IntLessThanCopyWith(IntLessThan value, $Res Function(IntLessThan) _then) = _$IntLessThanCopyWithImpl;
@override @useResult
$Res call({
 int input
});




}
/// @nodoc
class _$IntLessThanCopyWithImpl<$Res>
    implements $IntLessThanCopyWith<$Res> {
  _$IntLessThanCopyWithImpl(this._self, this._then);

  final IntLessThan _self;
  final $Res Function(IntLessThan) _then;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(IntLessThan(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$DateTimeFilter {

 DateTime get input;
/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateTimeFilterCopyWith<DateTimeFilter> get copyWith => _$DateTimeFilterCopyWithImpl<DateTimeFilter>(this as DateTimeFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateTimeFilter&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'DateTimeFilter(input: $input)';
}


}

/// @nodoc
abstract mixin class $DateTimeFilterCopyWith<$Res>  {
  factory $DateTimeFilterCopyWith(DateTimeFilter value, $Res Function(DateTimeFilter) _then) = _$DateTimeFilterCopyWithImpl;
@useResult
$Res call({
 DateTime input
});




}
/// @nodoc
class _$DateTimeFilterCopyWithImpl<$Res>
    implements $DateTimeFilterCopyWith<$Res> {
  _$DateTimeFilterCopyWithImpl(this._self, this._then);

  final DateTimeFilter _self;
  final $Res Function(DateTimeFilter) _then;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DateTimeFilter].
extension DateTimeFilterPatterns on DateTimeFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DateTimeEquals value)?  equals,TResult Function( DateTimeBeforeThan value)?  beforeThan,TResult Function( DateTimeAfterThan value)?  afterThan,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DateTimeEquals() when equals != null:
return equals(_that);case DateTimeBeforeThan() when beforeThan != null:
return beforeThan(_that);case DateTimeAfterThan() when afterThan != null:
return afterThan(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DateTimeEquals value)  equals,required TResult Function( DateTimeBeforeThan value)  beforeThan,required TResult Function( DateTimeAfterThan value)  afterThan,}){
final _that = this;
switch (_that) {
case DateTimeEquals():
return equals(_that);case DateTimeBeforeThan():
return beforeThan(_that);case DateTimeAfterThan():
return afterThan(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DateTimeEquals value)?  equals,TResult? Function( DateTimeBeforeThan value)?  beforeThan,TResult? Function( DateTimeAfterThan value)?  afterThan,}){
final _that = this;
switch (_that) {
case DateTimeEquals() when equals != null:
return equals(_that);case DateTimeBeforeThan() when beforeThan != null:
return beforeThan(_that);case DateTimeAfterThan() when afterThan != null:
return afterThan(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DateTime input)?  equals,TResult Function( DateTime input)?  beforeThan,TResult Function( DateTime input)?  afterThan,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DateTimeEquals() when equals != null:
return equals(_that.input);case DateTimeBeforeThan() when beforeThan != null:
return beforeThan(_that.input);case DateTimeAfterThan() when afterThan != null:
return afterThan(_that.input);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DateTime input)  equals,required TResult Function( DateTime input)  beforeThan,required TResult Function( DateTime input)  afterThan,}) {final _that = this;
switch (_that) {
case DateTimeEquals():
return equals(_that.input);case DateTimeBeforeThan():
return beforeThan(_that.input);case DateTimeAfterThan():
return afterThan(_that.input);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DateTime input)?  equals,TResult? Function( DateTime input)?  beforeThan,TResult? Function( DateTime input)?  afterThan,}) {final _that = this;
switch (_that) {
case DateTimeEquals() when equals != null:
return equals(_that.input);case DateTimeBeforeThan() when beforeThan != null:
return beforeThan(_that.input);case DateTimeAfterThan() when afterThan != null:
return afterThan(_that.input);case _:
  return null;

}
}

}

/// @nodoc


class DateTimeEquals implements DateTimeFilter {
  const DateTimeEquals(this.input);
  

@override final  DateTime input;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateTimeEqualsCopyWith<DateTimeEquals> get copyWith => _$DateTimeEqualsCopyWithImpl<DateTimeEquals>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateTimeEquals&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'DateTimeFilter.equals(input: $input)';
}


}

/// @nodoc
abstract mixin class $DateTimeEqualsCopyWith<$Res> implements $DateTimeFilterCopyWith<$Res> {
  factory $DateTimeEqualsCopyWith(DateTimeEquals value, $Res Function(DateTimeEquals) _then) = _$DateTimeEqualsCopyWithImpl;
@override @useResult
$Res call({
 DateTime input
});




}
/// @nodoc
class _$DateTimeEqualsCopyWithImpl<$Res>
    implements $DateTimeEqualsCopyWith<$Res> {
  _$DateTimeEqualsCopyWithImpl(this._self, this._then);

  final DateTimeEquals _self;
  final $Res Function(DateTimeEquals) _then;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(DateTimeEquals(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class DateTimeBeforeThan implements DateTimeFilter {
  const DateTimeBeforeThan(this.input);
  

@override final  DateTime input;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateTimeBeforeThanCopyWith<DateTimeBeforeThan> get copyWith => _$DateTimeBeforeThanCopyWithImpl<DateTimeBeforeThan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateTimeBeforeThan&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'DateTimeFilter.beforeThan(input: $input)';
}


}

/// @nodoc
abstract mixin class $DateTimeBeforeThanCopyWith<$Res> implements $DateTimeFilterCopyWith<$Res> {
  factory $DateTimeBeforeThanCopyWith(DateTimeBeforeThan value, $Res Function(DateTimeBeforeThan) _then) = _$DateTimeBeforeThanCopyWithImpl;
@override @useResult
$Res call({
 DateTime input
});




}
/// @nodoc
class _$DateTimeBeforeThanCopyWithImpl<$Res>
    implements $DateTimeBeforeThanCopyWith<$Res> {
  _$DateTimeBeforeThanCopyWithImpl(this._self, this._then);

  final DateTimeBeforeThan _self;
  final $Res Function(DateTimeBeforeThan) _then;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(DateTimeBeforeThan(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class DateTimeAfterThan implements DateTimeFilter {
  const DateTimeAfterThan(this.input);
  

@override final  DateTime input;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateTimeAfterThanCopyWith<DateTimeAfterThan> get copyWith => _$DateTimeAfterThanCopyWithImpl<DateTimeAfterThan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateTimeAfterThan&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'DateTimeFilter.afterThan(input: $input)';
}


}

/// @nodoc
abstract mixin class $DateTimeAfterThanCopyWith<$Res> implements $DateTimeFilterCopyWith<$Res> {
  factory $DateTimeAfterThanCopyWith(DateTimeAfterThan value, $Res Function(DateTimeAfterThan) _then) = _$DateTimeAfterThanCopyWithImpl;
@override @useResult
$Res call({
 DateTime input
});




}
/// @nodoc
class _$DateTimeAfterThanCopyWithImpl<$Res>
    implements $DateTimeAfterThanCopyWith<$Res> {
  _$DateTimeAfterThanCopyWithImpl(this._self, this._then);

  final DateTimeAfterThan _self;
  final $Res Function(DateTimeAfterThan) _then;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(DateTimeAfterThan(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
