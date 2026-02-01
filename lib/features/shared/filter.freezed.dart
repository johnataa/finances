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
mixin _$Filter {

 Object get prop;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Filter&&const DeepCollectionEquality().equals(other.prop, prop));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(prop));

@override
String toString() {
  return 'Filter(prop: $prop)';
}


}

/// @nodoc
class $FilterCopyWith<$Res>  {
$FilterCopyWith(Filter _, $Res Function(Filter) __);
}


/// Adds pattern-matching-related methods to [Filter].
extension FilterPatterns on Filter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StringFilter value)?  string,TResult Function( _IntFilter value)?  int,TResult Function( _DateTimeFilter value)?  dateTime,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StringFilter() when string != null:
return string(_that);case _IntFilter() when int != null:
return int(_that);case _DateTimeFilter() when dateTime != null:
return dateTime(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StringFilter value)  string,required TResult Function( _IntFilter value)  int,required TResult Function( _DateTimeFilter value)  dateTime,}){
final _that = this;
switch (_that) {
case _StringFilter():
return string(_that);case _IntFilter():
return int(_that);case _DateTimeFilter():
return dateTime(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StringFilter value)?  string,TResult? Function( _IntFilter value)?  int,TResult? Function( _DateTimeFilter value)?  dateTime,}){
final _that = this;
switch (_that) {
case _StringFilter() when string != null:
return string(_that);case _IntFilter() when int != null:
return int(_that);case _DateTimeFilter() when dateTime != null:
return dateTime(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( StringFilter prop)?  string,TResult Function( IntFilter prop)?  int,TResult Function( DateTimeFilter prop)?  dateTime,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StringFilter() when string != null:
return string(_that.prop);case _IntFilter() when int != null:
return int(_that.prop);case _DateTimeFilter() when dateTime != null:
return dateTime(_that.prop);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( StringFilter prop)  string,required TResult Function( IntFilter prop)  int,required TResult Function( DateTimeFilter prop)  dateTime,}) {final _that = this;
switch (_that) {
case _StringFilter():
return string(_that.prop);case _IntFilter():
return int(_that.prop);case _DateTimeFilter():
return dateTime(_that.prop);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( StringFilter prop)?  string,TResult? Function( IntFilter prop)?  int,TResult? Function( DateTimeFilter prop)?  dateTime,}) {final _that = this;
switch (_that) {
case _StringFilter() when string != null:
return string(_that.prop);case _IntFilter() when int != null:
return int(_that.prop);case _DateTimeFilter() when dateTime != null:
return dateTime(_that.prop);case _:
  return null;

}
}

}

/// @nodoc


class _StringFilter implements Filter {
  const _StringFilter(this.prop);
  

@override final  StringFilter prop;

/// Create a copy of Filter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StringFilterCopyWith<_StringFilter> get copyWith => __$StringFilterCopyWithImpl<_StringFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StringFilter&&(identical(other.prop, prop) || other.prop == prop));
}


@override
int get hashCode => Object.hash(runtimeType,prop);

@override
String toString() {
  return 'Filter.string(prop: $prop)';
}


}

/// @nodoc
abstract mixin class _$StringFilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$StringFilterCopyWith(_StringFilter value, $Res Function(_StringFilter) _then) = __$StringFilterCopyWithImpl;
@useResult
$Res call({
 StringFilter prop
});


$StringFilterCopyWith<$Res> get prop;

}
/// @nodoc
class __$StringFilterCopyWithImpl<$Res>
    implements _$StringFilterCopyWith<$Res> {
  __$StringFilterCopyWithImpl(this._self, this._then);

  final _StringFilter _self;
  final $Res Function(_StringFilter) _then;

/// Create a copy of Filter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prop = null,}) {
  return _then(_StringFilter(
null == prop ? _self.prop : prop // ignore: cast_nullable_to_non_nullable
as StringFilter,
  ));
}

/// Create a copy of Filter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StringFilterCopyWith<$Res> get prop {
  
  return $StringFilterCopyWith<$Res>(_self.prop, (value) {
    return _then(_self.copyWith(prop: value));
  });
}
}

/// @nodoc


class _IntFilter implements Filter {
  const _IntFilter(this.prop);
  

@override final  IntFilter prop;

/// Create a copy of Filter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntFilterCopyWith<_IntFilter> get copyWith => __$IntFilterCopyWithImpl<_IntFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntFilter&&(identical(other.prop, prop) || other.prop == prop));
}


@override
int get hashCode => Object.hash(runtimeType,prop);

@override
String toString() {
  return 'Filter.int(prop: $prop)';
}


}

/// @nodoc
abstract mixin class _$IntFilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$IntFilterCopyWith(_IntFilter value, $Res Function(_IntFilter) _then) = __$IntFilterCopyWithImpl;
@useResult
$Res call({
 IntFilter prop
});


$IntFilterCopyWith<$Res> get prop;

}
/// @nodoc
class __$IntFilterCopyWithImpl<$Res>
    implements _$IntFilterCopyWith<$Res> {
  __$IntFilterCopyWithImpl(this._self, this._then);

  final _IntFilter _self;
  final $Res Function(_IntFilter) _then;

/// Create a copy of Filter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prop = null,}) {
  return _then(_IntFilter(
null == prop ? _self.prop : prop // ignore: cast_nullable_to_non_nullable
as IntFilter,
  ));
}

/// Create a copy of Filter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntFilterCopyWith<$Res> get prop {
  
  return $IntFilterCopyWith<$Res>(_self.prop, (value) {
    return _then(_self.copyWith(prop: value));
  });
}
}

/// @nodoc


class _DateTimeFilter implements Filter {
  const _DateTimeFilter(this.prop);
  

@override final  DateTimeFilter prop;

/// Create a copy of Filter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateTimeFilterCopyWith<_DateTimeFilter> get copyWith => __$DateTimeFilterCopyWithImpl<_DateTimeFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateTimeFilter&&(identical(other.prop, prop) || other.prop == prop));
}


@override
int get hashCode => Object.hash(runtimeType,prop);

@override
String toString() {
  return 'Filter.dateTime(prop: $prop)';
}


}

/// @nodoc
abstract mixin class _$DateTimeFilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$DateTimeFilterCopyWith(_DateTimeFilter value, $Res Function(_DateTimeFilter) _then) = __$DateTimeFilterCopyWithImpl;
@useResult
$Res call({
 DateTimeFilter prop
});


$DateTimeFilterCopyWith<$Res> get prop;

}
/// @nodoc
class __$DateTimeFilterCopyWithImpl<$Res>
    implements _$DateTimeFilterCopyWith<$Res> {
  __$DateTimeFilterCopyWithImpl(this._self, this._then);

  final _DateTimeFilter _self;
  final $Res Function(_DateTimeFilter) _then;

/// Create a copy of Filter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prop = null,}) {
  return _then(_DateTimeFilter(
null == prop ? _self.prop : prop // ignore: cast_nullable_to_non_nullable
as DateTimeFilter,
  ));
}

/// Create a copy of Filter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateTimeFilterCopyWith<$Res> get prop {
  
  return $DateTimeFilterCopyWith<$Res>(_self.prop, (value) {
    return _then(_self.copyWith(prop: value));
  });
}
}

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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StringFilterEquals value)?  equals,TResult Function( _StringFilterContains value)?  contains,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StringFilterEquals() when equals != null:
return equals(_that);case _StringFilterContains() when contains != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StringFilterEquals value)  equals,required TResult Function( _StringFilterContains value)  contains,}){
final _that = this;
switch (_that) {
case _StringFilterEquals():
return equals(_that);case _StringFilterContains():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StringFilterEquals value)?  equals,TResult? Function( _StringFilterContains value)?  contains,}){
final _that = this;
switch (_that) {
case _StringFilterEquals() when equals != null:
return equals(_that);case _StringFilterContains() when contains != null:
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
case _StringFilterEquals() when equals != null:
return equals(_that.input);case _StringFilterContains() when contains != null:
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
case _StringFilterEquals():
return equals(_that.input);case _StringFilterContains():
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
case _StringFilterEquals() when equals != null:
return equals(_that.input);case _StringFilterContains() when contains != null:
return contains(_that.input);case _:
  return null;

}
}

}

/// @nodoc


class _StringFilterEquals implements StringFilter {
  const _StringFilterEquals(this.input);
  

@override final  String input;

/// Create a copy of StringFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StringFilterEqualsCopyWith<_StringFilterEquals> get copyWith => __$StringFilterEqualsCopyWithImpl<_StringFilterEquals>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StringFilterEquals&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'StringFilter.equals(input: $input)';
}


}

/// @nodoc
abstract mixin class _$StringFilterEqualsCopyWith<$Res> implements $StringFilterCopyWith<$Res> {
  factory _$StringFilterEqualsCopyWith(_StringFilterEquals value, $Res Function(_StringFilterEquals) _then) = __$StringFilterEqualsCopyWithImpl;
@override @useResult
$Res call({
 String input
});




}
/// @nodoc
class __$StringFilterEqualsCopyWithImpl<$Res>
    implements _$StringFilterEqualsCopyWith<$Res> {
  __$StringFilterEqualsCopyWithImpl(this._self, this._then);

  final _StringFilterEquals _self;
  final $Res Function(_StringFilterEquals) _then;

/// Create a copy of StringFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_StringFilterEquals(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _StringFilterContains implements StringFilter {
  const _StringFilterContains(this.input);
  

@override final  String input;

/// Create a copy of StringFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StringFilterContainsCopyWith<_StringFilterContains> get copyWith => __$StringFilterContainsCopyWithImpl<_StringFilterContains>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StringFilterContains&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'StringFilter.contains(input: $input)';
}


}

/// @nodoc
abstract mixin class _$StringFilterContainsCopyWith<$Res> implements $StringFilterCopyWith<$Res> {
  factory _$StringFilterContainsCopyWith(_StringFilterContains value, $Res Function(_StringFilterContains) _then) = __$StringFilterContainsCopyWithImpl;
@override @useResult
$Res call({
 String input
});




}
/// @nodoc
class __$StringFilterContainsCopyWithImpl<$Res>
    implements _$StringFilterContainsCopyWith<$Res> {
  __$StringFilterContainsCopyWithImpl(this._self, this._then);

  final _StringFilterContains _self;
  final $Res Function(_StringFilterContains) _then;

/// Create a copy of StringFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_StringFilterContains(
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _IntFilterEquals value)?  equals,TResult Function( _IntFilterGreaterThan value)?  greaterThan,TResult Function( _IntFilterLessThan value)?  lessThan,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntFilterEquals() when equals != null:
return equals(_that);case _IntFilterGreaterThan() when greaterThan != null:
return greaterThan(_that);case _IntFilterLessThan() when lessThan != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _IntFilterEquals value)  equals,required TResult Function( _IntFilterGreaterThan value)  greaterThan,required TResult Function( _IntFilterLessThan value)  lessThan,}){
final _that = this;
switch (_that) {
case _IntFilterEquals():
return equals(_that);case _IntFilterGreaterThan():
return greaterThan(_that);case _IntFilterLessThan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _IntFilterEquals value)?  equals,TResult? Function( _IntFilterGreaterThan value)?  greaterThan,TResult? Function( _IntFilterLessThan value)?  lessThan,}){
final _that = this;
switch (_that) {
case _IntFilterEquals() when equals != null:
return equals(_that);case _IntFilterGreaterThan() when greaterThan != null:
return greaterThan(_that);case _IntFilterLessThan() when lessThan != null:
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
case _IntFilterEquals() when equals != null:
return equals(_that.input);case _IntFilterGreaterThan() when greaterThan != null:
return greaterThan(_that.input);case _IntFilterLessThan() when lessThan != null:
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
case _IntFilterEquals():
return equals(_that.input);case _IntFilterGreaterThan():
return greaterThan(_that.input);case _IntFilterLessThan():
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
case _IntFilterEquals() when equals != null:
return equals(_that.input);case _IntFilterGreaterThan() when greaterThan != null:
return greaterThan(_that.input);case _IntFilterLessThan() when lessThan != null:
return lessThan(_that.input);case _:
  return null;

}
}

}

/// @nodoc


class _IntFilterEquals implements IntFilter {
  const _IntFilterEquals(this.input);
  

@override final  int input;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntFilterEqualsCopyWith<_IntFilterEquals> get copyWith => __$IntFilterEqualsCopyWithImpl<_IntFilterEquals>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntFilterEquals&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'IntFilter.equals(input: $input)';
}


}

/// @nodoc
abstract mixin class _$IntFilterEqualsCopyWith<$Res> implements $IntFilterCopyWith<$Res> {
  factory _$IntFilterEqualsCopyWith(_IntFilterEquals value, $Res Function(_IntFilterEquals) _then) = __$IntFilterEqualsCopyWithImpl;
@override @useResult
$Res call({
 int input
});




}
/// @nodoc
class __$IntFilterEqualsCopyWithImpl<$Res>
    implements _$IntFilterEqualsCopyWith<$Res> {
  __$IntFilterEqualsCopyWithImpl(this._self, this._then);

  final _IntFilterEquals _self;
  final $Res Function(_IntFilterEquals) _then;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_IntFilterEquals(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _IntFilterGreaterThan implements IntFilter {
  const _IntFilterGreaterThan(this.input);
  

@override final  int input;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntFilterGreaterThanCopyWith<_IntFilterGreaterThan> get copyWith => __$IntFilterGreaterThanCopyWithImpl<_IntFilterGreaterThan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntFilterGreaterThan&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'IntFilter.greaterThan(input: $input)';
}


}

/// @nodoc
abstract mixin class _$IntFilterGreaterThanCopyWith<$Res> implements $IntFilterCopyWith<$Res> {
  factory _$IntFilterGreaterThanCopyWith(_IntFilterGreaterThan value, $Res Function(_IntFilterGreaterThan) _then) = __$IntFilterGreaterThanCopyWithImpl;
@override @useResult
$Res call({
 int input
});




}
/// @nodoc
class __$IntFilterGreaterThanCopyWithImpl<$Res>
    implements _$IntFilterGreaterThanCopyWith<$Res> {
  __$IntFilterGreaterThanCopyWithImpl(this._self, this._then);

  final _IntFilterGreaterThan _self;
  final $Res Function(_IntFilterGreaterThan) _then;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_IntFilterGreaterThan(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _IntFilterLessThan implements IntFilter {
  const _IntFilterLessThan(this.input);
  

@override final  int input;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntFilterLessThanCopyWith<_IntFilterLessThan> get copyWith => __$IntFilterLessThanCopyWithImpl<_IntFilterLessThan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntFilterLessThan&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'IntFilter.lessThan(input: $input)';
}


}

/// @nodoc
abstract mixin class _$IntFilterLessThanCopyWith<$Res> implements $IntFilterCopyWith<$Res> {
  factory _$IntFilterLessThanCopyWith(_IntFilterLessThan value, $Res Function(_IntFilterLessThan) _then) = __$IntFilterLessThanCopyWithImpl;
@override @useResult
$Res call({
 int input
});




}
/// @nodoc
class __$IntFilterLessThanCopyWithImpl<$Res>
    implements _$IntFilterLessThanCopyWith<$Res> {
  __$IntFilterLessThanCopyWithImpl(this._self, this._then);

  final _IntFilterLessThan _self;
  final $Res Function(_IntFilterLessThan) _then;

/// Create a copy of IntFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_IntFilterLessThan(
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DateTimeFilterEquals value)?  equals,TResult Function( _DateTimeFilterBeforeThan value)?  beforeThan,TResult Function( _DateTimeFilterAfterThan value)?  afterThan,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DateTimeFilterEquals() when equals != null:
return equals(_that);case _DateTimeFilterBeforeThan() when beforeThan != null:
return beforeThan(_that);case _DateTimeFilterAfterThan() when afterThan != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DateTimeFilterEquals value)  equals,required TResult Function( _DateTimeFilterBeforeThan value)  beforeThan,required TResult Function( _DateTimeFilterAfterThan value)  afterThan,}){
final _that = this;
switch (_that) {
case _DateTimeFilterEquals():
return equals(_that);case _DateTimeFilterBeforeThan():
return beforeThan(_that);case _DateTimeFilterAfterThan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DateTimeFilterEquals value)?  equals,TResult? Function( _DateTimeFilterBeforeThan value)?  beforeThan,TResult? Function( _DateTimeFilterAfterThan value)?  afterThan,}){
final _that = this;
switch (_that) {
case _DateTimeFilterEquals() when equals != null:
return equals(_that);case _DateTimeFilterBeforeThan() when beforeThan != null:
return beforeThan(_that);case _DateTimeFilterAfterThan() when afterThan != null:
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
case _DateTimeFilterEquals() when equals != null:
return equals(_that.input);case _DateTimeFilterBeforeThan() when beforeThan != null:
return beforeThan(_that.input);case _DateTimeFilterAfterThan() when afterThan != null:
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
case _DateTimeFilterEquals():
return equals(_that.input);case _DateTimeFilterBeforeThan():
return beforeThan(_that.input);case _DateTimeFilterAfterThan():
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
case _DateTimeFilterEquals() when equals != null:
return equals(_that.input);case _DateTimeFilterBeforeThan() when beforeThan != null:
return beforeThan(_that.input);case _DateTimeFilterAfterThan() when afterThan != null:
return afterThan(_that.input);case _:
  return null;

}
}

}

/// @nodoc


class _DateTimeFilterEquals implements DateTimeFilter {
  const _DateTimeFilterEquals(this.input);
  

@override final  DateTime input;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateTimeFilterEqualsCopyWith<_DateTimeFilterEquals> get copyWith => __$DateTimeFilterEqualsCopyWithImpl<_DateTimeFilterEquals>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateTimeFilterEquals&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'DateTimeFilter.equals(input: $input)';
}


}

/// @nodoc
abstract mixin class _$DateTimeFilterEqualsCopyWith<$Res> implements $DateTimeFilterCopyWith<$Res> {
  factory _$DateTimeFilterEqualsCopyWith(_DateTimeFilterEquals value, $Res Function(_DateTimeFilterEquals) _then) = __$DateTimeFilterEqualsCopyWithImpl;
@override @useResult
$Res call({
 DateTime input
});




}
/// @nodoc
class __$DateTimeFilterEqualsCopyWithImpl<$Res>
    implements _$DateTimeFilterEqualsCopyWith<$Res> {
  __$DateTimeFilterEqualsCopyWithImpl(this._self, this._then);

  final _DateTimeFilterEquals _self;
  final $Res Function(_DateTimeFilterEquals) _then;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_DateTimeFilterEquals(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _DateTimeFilterBeforeThan implements DateTimeFilter {
  const _DateTimeFilterBeforeThan(this.input);
  

@override final  DateTime input;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateTimeFilterBeforeThanCopyWith<_DateTimeFilterBeforeThan> get copyWith => __$DateTimeFilterBeforeThanCopyWithImpl<_DateTimeFilterBeforeThan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateTimeFilterBeforeThan&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'DateTimeFilter.beforeThan(input: $input)';
}


}

/// @nodoc
abstract mixin class _$DateTimeFilterBeforeThanCopyWith<$Res> implements $DateTimeFilterCopyWith<$Res> {
  factory _$DateTimeFilterBeforeThanCopyWith(_DateTimeFilterBeforeThan value, $Res Function(_DateTimeFilterBeforeThan) _then) = __$DateTimeFilterBeforeThanCopyWithImpl;
@override @useResult
$Res call({
 DateTime input
});




}
/// @nodoc
class __$DateTimeFilterBeforeThanCopyWithImpl<$Res>
    implements _$DateTimeFilterBeforeThanCopyWith<$Res> {
  __$DateTimeFilterBeforeThanCopyWithImpl(this._self, this._then);

  final _DateTimeFilterBeforeThan _self;
  final $Res Function(_DateTimeFilterBeforeThan) _then;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_DateTimeFilterBeforeThan(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _DateTimeFilterAfterThan implements DateTimeFilter {
  const _DateTimeFilterAfterThan(this.input);
  

@override final  DateTime input;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateTimeFilterAfterThanCopyWith<_DateTimeFilterAfterThan> get copyWith => __$DateTimeFilterAfterThanCopyWithImpl<_DateTimeFilterAfterThan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateTimeFilterAfterThan&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'DateTimeFilter.afterThan(input: $input)';
}


}

/// @nodoc
abstract mixin class _$DateTimeFilterAfterThanCopyWith<$Res> implements $DateTimeFilterCopyWith<$Res> {
  factory _$DateTimeFilterAfterThanCopyWith(_DateTimeFilterAfterThan value, $Res Function(_DateTimeFilterAfterThan) _then) = __$DateTimeFilterAfterThanCopyWithImpl;
@override @useResult
$Res call({
 DateTime input
});




}
/// @nodoc
class __$DateTimeFilterAfterThanCopyWithImpl<$Res>
    implements _$DateTimeFilterAfterThanCopyWith<$Res> {
  __$DateTimeFilterAfterThanCopyWithImpl(this._self, this._then);

  final _DateTimeFilterAfterThan _self;
  final $Res Function(_DateTimeFilterAfterThan) _then;

/// Create a copy of DateTimeFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_DateTimeFilterAfterThan(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
