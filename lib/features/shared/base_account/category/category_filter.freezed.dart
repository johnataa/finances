// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryFilter {

 StringFilter? get name; MetaFilter? get meta; FilterType get type;
/// Create a copy of CategoryFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryFilterCopyWith<CategoryFilter> get copyWith => _$CategoryFilterCopyWithImpl<CategoryFilter>(this as CategoryFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryFilter&&(identical(other.name, name) || other.name == name)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,name,meta,type);

@override
String toString() {
  return 'CategoryFilter(name: $name, meta: $meta, type: $type)';
}


}

/// @nodoc
abstract mixin class $CategoryFilterCopyWith<$Res>  {
  factory $CategoryFilterCopyWith(CategoryFilter value, $Res Function(CategoryFilter) _then) = _$CategoryFilterCopyWithImpl;
@useResult
$Res call({
 StringFilter? name, MetaFilter? meta, FilterType type
});


$StringFilterCopyWith<$Res>? get name;$MetaFilterCopyWith<$Res>? get meta;

}
/// @nodoc
class _$CategoryFilterCopyWithImpl<$Res>
    implements $CategoryFilterCopyWith<$Res> {
  _$CategoryFilterCopyWithImpl(this._self, this._then);

  final CategoryFilter _self;
  final $Res Function(CategoryFilter) _then;

/// Create a copy of CategoryFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? meta = freezed,Object? type = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as StringFilter?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaFilter?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FilterType,
  ));
}
/// Create a copy of CategoryFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StringFilterCopyWith<$Res>? get name {
    if (_self.name == null) {
    return null;
  }

  return $StringFilterCopyWith<$Res>(_self.name!, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of CategoryFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaFilterCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaFilterCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryFilter].
extension CategoryFilterPatterns on CategoryFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryFilter value)  $default,){
final _that = this;
switch (_that) {
case _CategoryFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryFilter value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StringFilter? name,  MetaFilter? meta,  FilterType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryFilter() when $default != null:
return $default(_that.name,_that.meta,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StringFilter? name,  MetaFilter? meta,  FilterType type)  $default,) {final _that = this;
switch (_that) {
case _CategoryFilter():
return $default(_that.name,_that.meta,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StringFilter? name,  MetaFilter? meta,  FilterType type)?  $default,) {final _that = this;
switch (_that) {
case _CategoryFilter() when $default != null:
return $default(_that.name,_that.meta,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryFilter implements CategoryFilter {
  const _CategoryFilter({this.name, this.meta, this.type = FilterType.union});
  

@override final  StringFilter? name;
@override final  MetaFilter? meta;
@override@JsonKey() final  FilterType type;

/// Create a copy of CategoryFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryFilterCopyWith<_CategoryFilter> get copyWith => __$CategoryFilterCopyWithImpl<_CategoryFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryFilter&&(identical(other.name, name) || other.name == name)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,name,meta,type);

@override
String toString() {
  return 'CategoryFilter(name: $name, meta: $meta, type: $type)';
}


}

/// @nodoc
abstract mixin class _$CategoryFilterCopyWith<$Res> implements $CategoryFilterCopyWith<$Res> {
  factory _$CategoryFilterCopyWith(_CategoryFilter value, $Res Function(_CategoryFilter) _then) = __$CategoryFilterCopyWithImpl;
@override @useResult
$Res call({
 StringFilter? name, MetaFilter? meta, FilterType type
});


@override $StringFilterCopyWith<$Res>? get name;@override $MetaFilterCopyWith<$Res>? get meta;

}
/// @nodoc
class __$CategoryFilterCopyWithImpl<$Res>
    implements _$CategoryFilterCopyWith<$Res> {
  __$CategoryFilterCopyWithImpl(this._self, this._then);

  final _CategoryFilter _self;
  final $Res Function(_CategoryFilter) _then;

/// Create a copy of CategoryFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? meta = freezed,Object? type = null,}) {
  return _then(_CategoryFilter(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as StringFilter?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaFilter?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FilterType,
  ));
}

/// Create a copy of CategoryFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StringFilterCopyWith<$Res>? get name {
    if (_self.name == null) {
    return null;
  }

  return $StringFilterCopyWith<$Res>(_self.name!, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of CategoryFilter
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaFilterCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaFilterCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

/// @nodoc
mixin _$CategorySort {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategorySort);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategorySort()';
}


}

/// @nodoc
class $CategorySortCopyWith<$Res>  {
$CategorySortCopyWith(CategorySort _, $Res Function(CategorySort) __);
}


/// Adds pattern-matching-related methods to [CategorySort].
extension CategorySortPatterns on CategorySort {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CategorySortName value)?  name,TResult Function( _CategorySortMeta value)?  meta,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategorySortName() when name != null:
return name(_that);case _CategorySortMeta() when meta != null:
return meta(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CategorySortName value)  name,required TResult Function( _CategorySortMeta value)  meta,}){
final _that = this;
switch (_that) {
case _CategorySortName():
return name(_that);case _CategorySortMeta():
return meta(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CategorySortName value)?  name,TResult? Function( _CategorySortMeta value)?  meta,}){
final _that = this;
switch (_that) {
case _CategorySortName() when name != null:
return name(_that);case _CategorySortMeta() when meta != null:
return meta(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool desc)?  name,TResult Function( MetaSort metaSort)?  meta,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategorySortName() when name != null:
return name(_that.desc);case _CategorySortMeta() when meta != null:
return meta(_that.metaSort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool desc)  name,required TResult Function( MetaSort metaSort)  meta,}) {final _that = this;
switch (_that) {
case _CategorySortName():
return name(_that.desc);case _CategorySortMeta():
return meta(_that.metaSort);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool desc)?  name,TResult? Function( MetaSort metaSort)?  meta,}) {final _that = this;
switch (_that) {
case _CategorySortName() when name != null:
return name(_that.desc);case _CategorySortMeta() when meta != null:
return meta(_that.metaSort);case _:
  return null;

}
}

}

/// @nodoc


class _CategorySortName implements CategorySort {
  const _CategorySortName({this.desc = false});
  

@JsonKey() final  bool desc;

/// Create a copy of CategorySort
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategorySortNameCopyWith<_CategorySortName> get copyWith => __$CategorySortNameCopyWithImpl<_CategorySortName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategorySortName&&(identical(other.desc, desc) || other.desc == desc));
}


@override
int get hashCode => Object.hash(runtimeType,desc);

@override
String toString() {
  return 'CategorySort.name(desc: $desc)';
}


}

/// @nodoc
abstract mixin class _$CategorySortNameCopyWith<$Res> implements $CategorySortCopyWith<$Res> {
  factory _$CategorySortNameCopyWith(_CategorySortName value, $Res Function(_CategorySortName) _then) = __$CategorySortNameCopyWithImpl;
@useResult
$Res call({
 bool desc
});




}
/// @nodoc
class __$CategorySortNameCopyWithImpl<$Res>
    implements _$CategorySortNameCopyWith<$Res> {
  __$CategorySortNameCopyWithImpl(this._self, this._then);

  final _CategorySortName _self;
  final $Res Function(_CategorySortName) _then;

/// Create a copy of CategorySort
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? desc = null,}) {
  return _then(_CategorySortName(
desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _CategorySortMeta implements CategorySort {
  const _CategorySortMeta(this.metaSort);
  

 final  MetaSort metaSort;

/// Create a copy of CategorySort
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategorySortMetaCopyWith<_CategorySortMeta> get copyWith => __$CategorySortMetaCopyWithImpl<_CategorySortMeta>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategorySortMeta&&(identical(other.metaSort, metaSort) || other.metaSort == metaSort));
}


@override
int get hashCode => Object.hash(runtimeType,metaSort);

@override
String toString() {
  return 'CategorySort.meta(metaSort: $metaSort)';
}


}

/// @nodoc
abstract mixin class _$CategorySortMetaCopyWith<$Res> implements $CategorySortCopyWith<$Res> {
  factory _$CategorySortMetaCopyWith(_CategorySortMeta value, $Res Function(_CategorySortMeta) _then) = __$CategorySortMetaCopyWithImpl;
@useResult
$Res call({
 MetaSort metaSort
});


$MetaSortCopyWith<$Res> get metaSort;

}
/// @nodoc
class __$CategorySortMetaCopyWithImpl<$Res>
    implements _$CategorySortMetaCopyWith<$Res> {
  __$CategorySortMetaCopyWithImpl(this._self, this._then);

  final _CategorySortMeta _self;
  final $Res Function(_CategorySortMeta) _then;

/// Create a copy of CategorySort
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? metaSort = null,}) {
  return _then(_CategorySortMeta(
null == metaSort ? _self.metaSort : metaSort // ignore: cast_nullable_to_non_nullable
as MetaSort,
  ));
}

/// Create a copy of CategorySort
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaSortCopyWith<$Res> get metaSort {
  
  return $MetaSortCopyWith<$Res>(_self.metaSort, (value) {
    return _then(_self.copyWith(metaSort: value));
  });
}
}

// dart format on
