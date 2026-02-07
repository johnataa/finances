import 'package:freezed_annotation/freezed_annotation.dart';

import '../../filter.dart';
import '../../meta/meta_filter.dart';

part 'category_filter.freezed.dart';

@freezed
abstract class CategoryFilter with _$CategoryFilter {
  const factory CategoryFilter({
    StringFilter? name,
    MetaFilter? meta,
    @Default(FilterType.union) FilterType type,
  }) = _CategoryFilter;
}

@freezed
sealed class CategorySort with _$CategorySort {
  const factory CategorySort.name({@Default(false) bool desc}) = _CategorySortName;
  const factory CategorySort.meta(MetaSort metaSort) = _CategorySortMeta;

  static const CategorySort defaultSort = CategorySort.meta(.defaultSort);
}
