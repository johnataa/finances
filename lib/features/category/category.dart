import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/base/base.dart';
import '../../shared/contracts/entity.dart';
import '../../shared/name/name.dart';

part 'category.freezed.dart';

@freezed
sealed class Category with _$Category implements IEntity {
  const Category._();

  @override
  int get id => base.id;

  const factory Category({
    @Default(Base.empty) Base base,
    required Name name,
    required String icon,
    required String color,
  }) = _Category;
}
