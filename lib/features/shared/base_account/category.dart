import 'package:freezed_annotation/freezed_annotation.dart';

import '../entity_meta.dart';
import '../name/name.dart';

part 'category.freezed.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    @Default(EntityMeta.empty) EntityMeta meta,
    required Name name,
    required String icon,
  }) = _Category;
}
