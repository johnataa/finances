import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/entity.dart';
import '../../shared/meta/meta.dart';
import '../../shared/name/name.dart';

part 'category.freezed.dart';

@freezed
sealed class Category with _$Category implements Entity {
  const Category._();

  @override
  int get id => meta.id;

  const factory Category({
    @Default(Meta.empty) Meta meta,
    required Name name,
    required String icon,
    required String color,
  }) = _Category;
}
