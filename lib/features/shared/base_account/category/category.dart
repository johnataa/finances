import 'package:freezed_annotation/freezed_annotation.dart';

import '../../meta/meta.dart';
import '../../name/name.dart';

part 'category.freezed.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    @Default(Meta.empty) Meta meta,
    required Name name,
    required String icon,
    required String color,
  }) = _Category;
}
