// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MetaFilter {

 IntFilter? get id; DateTimeFilter? get createdAt; DateTimeFilter? get updatedAt; FilterType get type;
/// Create a copy of MetaFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaFilterCopyWith<MetaFilter> get copyWith => _$MetaFilterCopyWithImpl<MetaFilter>(this as MetaFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaFilter&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,type);

@override
String toString() {
  return 'MetaFilter(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, type: $type)';
}


}

/// @nodoc
abstract mixin class $MetaFilterCopyWith<$Res>  {
  factory $MetaFilterCopyWith(MetaFilter value, $Res Function(MetaFilter) _then) = _$MetaFilterCopyWithImpl;
@useResult
$Res call({
 IntFilter? id, DateTimeFilter? createdAt, DateTimeFilter? updatedAt, FilterType type
});


$IntFilterCopyWith<$Res>? get id;$DateTimeFilterCopyWith<$Res>? get createdAt;$DateTimeFilterCopyWith<$Res>? get updatedAt;

}
/// @nodoc
class _$MetaFilterCopyWithImpl<$Res>
    implements $MetaFilterCopyWith<$Res> {
  _$MetaFilterCopyWithImpl(this._self, this._then);

  final MetaFilter _self;
  final $Res Function(MetaFilter) _then;

/// Create a copy of MetaFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? type = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as IntFilter?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTimeFilter?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTimeFilter?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FilterType,
  ));
}
/// Create a copy of MetaFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntFilterCopyWith<$Res>? get id {
    if (_self.id == null) {
    return null;
  }

  return $IntFilterCopyWith<$Res>(_self.id!, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of MetaFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateTimeFilterCopyWith<$Res>? get createdAt {
    if (_self.createdAt == null) {
    return null;
  }

  return $DateTimeFilterCopyWith<$Res>(_self.createdAt!, (value) {
    return _then(_self.copyWith(createdAt: value));
  });
}/// Create a copy of MetaFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateTimeFilterCopyWith<$Res>? get updatedAt {
    if (_self.updatedAt == null) {
    return null;
  }

  return $DateTimeFilterCopyWith<$Res>(_self.updatedAt!, (value) {
    return _then(_self.copyWith(updatedAt: value));
  });
}
}


/// Adds pattern-matching-related methods to [MetaFilter].
extension MetaFilterPatterns on MetaFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MetaFilter value)?  filter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaFilter() when filter != null:
return filter(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MetaFilter value)  filter,}){
final _that = this;
switch (_that) {
case _MetaFilter():
return filter(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MetaFilter value)?  filter,}){
final _that = this;
switch (_that) {
case _MetaFilter() when filter != null:
return filter(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( IntFilter? id,  DateTimeFilter? createdAt,  DateTimeFilter? updatedAt,  FilterType type)?  filter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaFilter() when filter != null:
return filter(_that.id,_that.createdAt,_that.updatedAt,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( IntFilter? id,  DateTimeFilter? createdAt,  DateTimeFilter? updatedAt,  FilterType type)  filter,}) {final _that = this;
switch (_that) {
case _MetaFilter():
return filter(_that.id,_that.createdAt,_that.updatedAt,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( IntFilter? id,  DateTimeFilter? createdAt,  DateTimeFilter? updatedAt,  FilterType type)?  filter,}) {final _that = this;
switch (_that) {
case _MetaFilter() when filter != null:
return filter(_that.id,_that.createdAt,_that.updatedAt,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _MetaFilter implements MetaFilter {
  const _MetaFilter({this.id, this.createdAt, this.updatedAt, this.type = FilterType.union});
  

@override final  IntFilter? id;
@override final  DateTimeFilter? createdAt;
@override final  DateTimeFilter? updatedAt;
@override@JsonKey() final  FilterType type;

/// Create a copy of MetaFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaFilterCopyWith<_MetaFilter> get copyWith => __$MetaFilterCopyWithImpl<_MetaFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaFilter&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,type);

@override
String toString() {
  return 'MetaFilter.filter(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, type: $type)';
}


}

/// @nodoc
abstract mixin class _$MetaFilterCopyWith<$Res> implements $MetaFilterCopyWith<$Res> {
  factory _$MetaFilterCopyWith(_MetaFilter value, $Res Function(_MetaFilter) _then) = __$MetaFilterCopyWithImpl;
@override @useResult
$Res call({
 IntFilter? id, DateTimeFilter? createdAt, DateTimeFilter? updatedAt, FilterType type
});


@override $IntFilterCopyWith<$Res>? get id;@override $DateTimeFilterCopyWith<$Res>? get createdAt;@override $DateTimeFilterCopyWith<$Res>? get updatedAt;

}
/// @nodoc
class __$MetaFilterCopyWithImpl<$Res>
    implements _$MetaFilterCopyWith<$Res> {
  __$MetaFilterCopyWithImpl(this._self, this._then);

  final _MetaFilter _self;
  final $Res Function(_MetaFilter) _then;

/// Create a copy of MetaFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? type = null,}) {
  return _then(_MetaFilter(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as IntFilter?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTimeFilter?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTimeFilter?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FilterType,
  ));
}

/// Create a copy of MetaFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IntFilterCopyWith<$Res>? get id {
    if (_self.id == null) {
    return null;
  }

  return $IntFilterCopyWith<$Res>(_self.id!, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of MetaFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateTimeFilterCopyWith<$Res>? get createdAt {
    if (_self.createdAt == null) {
    return null;
  }

  return $DateTimeFilterCopyWith<$Res>(_self.createdAt!, (value) {
    return _then(_self.copyWith(createdAt: value));
  });
}/// Create a copy of MetaFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateTimeFilterCopyWith<$Res>? get updatedAt {
    if (_self.updatedAt == null) {
    return null;
  }

  return $DateTimeFilterCopyWith<$Res>(_self.updatedAt!, (value) {
    return _then(_self.copyWith(updatedAt: value));
  });
}
}

/// @nodoc
mixin _$MetaSort {

 bool get desc;
/// Create a copy of MetaSort
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaSortCopyWith<MetaSort> get copyWith => _$MetaSortCopyWithImpl<MetaSort>(this as MetaSort, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaSort&&(identical(other.desc, desc) || other.desc == desc));
}


@override
int get hashCode => Object.hash(runtimeType,desc);

@override
String toString() {
  return 'MetaSort(desc: $desc)';
}


}

/// @nodoc
abstract mixin class $MetaSortCopyWith<$Res>  {
  factory $MetaSortCopyWith(MetaSort value, $Res Function(MetaSort) _then) = _$MetaSortCopyWithImpl;
@useResult
$Res call({
 bool desc
});




}
/// @nodoc
class _$MetaSortCopyWithImpl<$Res>
    implements $MetaSortCopyWith<$Res> {
  _$MetaSortCopyWithImpl(this._self, this._then);

  final MetaSort _self;
  final $Res Function(MetaSort) _then;

/// Create a copy of MetaSort
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? desc = null,}) {
  return _then(_self.copyWith(
desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MetaSort].
extension MetaSortPatterns on MetaSort {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MetaSortId value)?  id,TResult Function( _MetaSortCreatedAt value)?  createdAt,TResult Function( _MetaSortUpdatedAt value)?  updatedAt,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaSortId() when id != null:
return id(_that);case _MetaSortCreatedAt() when createdAt != null:
return createdAt(_that);case _MetaSortUpdatedAt() when updatedAt != null:
return updatedAt(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MetaSortId value)  id,required TResult Function( _MetaSortCreatedAt value)  createdAt,required TResult Function( _MetaSortUpdatedAt value)  updatedAt,}){
final _that = this;
switch (_that) {
case _MetaSortId():
return id(_that);case _MetaSortCreatedAt():
return createdAt(_that);case _MetaSortUpdatedAt():
return updatedAt(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MetaSortId value)?  id,TResult? Function( _MetaSortCreatedAt value)?  createdAt,TResult? Function( _MetaSortUpdatedAt value)?  updatedAt,}){
final _that = this;
switch (_that) {
case _MetaSortId() when id != null:
return id(_that);case _MetaSortCreatedAt() when createdAt != null:
return createdAt(_that);case _MetaSortUpdatedAt() when updatedAt != null:
return updatedAt(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool desc)?  id,TResult Function( bool desc)?  createdAt,TResult Function( bool desc)?  updatedAt,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaSortId() when id != null:
return id(_that.desc);case _MetaSortCreatedAt() when createdAt != null:
return createdAt(_that.desc);case _MetaSortUpdatedAt() when updatedAt != null:
return updatedAt(_that.desc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool desc)  id,required TResult Function( bool desc)  createdAt,required TResult Function( bool desc)  updatedAt,}) {final _that = this;
switch (_that) {
case _MetaSortId():
return id(_that.desc);case _MetaSortCreatedAt():
return createdAt(_that.desc);case _MetaSortUpdatedAt():
return updatedAt(_that.desc);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool desc)?  id,TResult? Function( bool desc)?  createdAt,TResult? Function( bool desc)?  updatedAt,}) {final _that = this;
switch (_that) {
case _MetaSortId() when id != null:
return id(_that.desc);case _MetaSortCreatedAt() when createdAt != null:
return createdAt(_that.desc);case _MetaSortUpdatedAt() when updatedAt != null:
return updatedAt(_that.desc);case _:
  return null;

}
}

}

/// @nodoc


class _MetaSortId implements MetaSort {
  const _MetaSortId({this.desc = false});
  

@override@JsonKey() final  bool desc;

/// Create a copy of MetaSort
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaSortIdCopyWith<_MetaSortId> get copyWith => __$MetaSortIdCopyWithImpl<_MetaSortId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaSortId&&(identical(other.desc, desc) || other.desc == desc));
}


@override
int get hashCode => Object.hash(runtimeType,desc);

@override
String toString() {
  return 'MetaSort.id(desc: $desc)';
}


}

/// @nodoc
abstract mixin class _$MetaSortIdCopyWith<$Res> implements $MetaSortCopyWith<$Res> {
  factory _$MetaSortIdCopyWith(_MetaSortId value, $Res Function(_MetaSortId) _then) = __$MetaSortIdCopyWithImpl;
@override @useResult
$Res call({
 bool desc
});




}
/// @nodoc
class __$MetaSortIdCopyWithImpl<$Res>
    implements _$MetaSortIdCopyWith<$Res> {
  __$MetaSortIdCopyWithImpl(this._self, this._then);

  final _MetaSortId _self;
  final $Res Function(_MetaSortId) _then;

/// Create a copy of MetaSort
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? desc = null,}) {
  return _then(_MetaSortId(
desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _MetaSortCreatedAt implements MetaSort {
  const _MetaSortCreatedAt({this.desc = false});
  

@override@JsonKey() final  bool desc;

/// Create a copy of MetaSort
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaSortCreatedAtCopyWith<_MetaSortCreatedAt> get copyWith => __$MetaSortCreatedAtCopyWithImpl<_MetaSortCreatedAt>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaSortCreatedAt&&(identical(other.desc, desc) || other.desc == desc));
}


@override
int get hashCode => Object.hash(runtimeType,desc);

@override
String toString() {
  return 'MetaSort.createdAt(desc: $desc)';
}


}

/// @nodoc
abstract mixin class _$MetaSortCreatedAtCopyWith<$Res> implements $MetaSortCopyWith<$Res> {
  factory _$MetaSortCreatedAtCopyWith(_MetaSortCreatedAt value, $Res Function(_MetaSortCreatedAt) _then) = __$MetaSortCreatedAtCopyWithImpl;
@override @useResult
$Res call({
 bool desc
});




}
/// @nodoc
class __$MetaSortCreatedAtCopyWithImpl<$Res>
    implements _$MetaSortCreatedAtCopyWith<$Res> {
  __$MetaSortCreatedAtCopyWithImpl(this._self, this._then);

  final _MetaSortCreatedAt _self;
  final $Res Function(_MetaSortCreatedAt) _then;

/// Create a copy of MetaSort
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? desc = null,}) {
  return _then(_MetaSortCreatedAt(
desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _MetaSortUpdatedAt implements MetaSort {
  const _MetaSortUpdatedAt({this.desc = false});
  

@override@JsonKey() final  bool desc;

/// Create a copy of MetaSort
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaSortUpdatedAtCopyWith<_MetaSortUpdatedAt> get copyWith => __$MetaSortUpdatedAtCopyWithImpl<_MetaSortUpdatedAt>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaSortUpdatedAt&&(identical(other.desc, desc) || other.desc == desc));
}


@override
int get hashCode => Object.hash(runtimeType,desc);

@override
String toString() {
  return 'MetaSort.updatedAt(desc: $desc)';
}


}

/// @nodoc
abstract mixin class _$MetaSortUpdatedAtCopyWith<$Res> implements $MetaSortCopyWith<$Res> {
  factory _$MetaSortUpdatedAtCopyWith(_MetaSortUpdatedAt value, $Res Function(_MetaSortUpdatedAt) _then) = __$MetaSortUpdatedAtCopyWithImpl;
@override @useResult
$Res call({
 bool desc
});




}
/// @nodoc
class __$MetaSortUpdatedAtCopyWithImpl<$Res>
    implements _$MetaSortUpdatedAtCopyWith<$Res> {
  __$MetaSortUpdatedAtCopyWithImpl(this._self, this._then);

  final _MetaSortUpdatedAt _self;
  final $Res Function(_MetaSortUpdatedAt) _then;

/// Create a copy of MetaSort
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? desc = null,}) {
  return _then(_MetaSortUpdatedAt(
desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
