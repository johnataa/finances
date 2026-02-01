import 'package:freezed_annotation/freezed_annotation.dart';

import '../filter.dart';

part 'meta_filter.freezed.dart';

@freezed
abstract class MetaFilter with _$MetaFilter {
  const factory MetaFilter.filter({
    IntFilter? id,
    DateTimeFilter? createdAt,
    DateTimeFilter? updatedAt,
    @Default(FilterType.union) FilterType type,
  }) = _MetaFilter;

  static const MetaFilter empty = MetaFilter.filter();
}

@freezed
sealed class MetaSort with _$MetaSort {
  const factory MetaSort.id({@Default(false) bool desc}) = _MetaSortId;
  const factory MetaSort.createdAt({@Default(false) bool desc}) = _MetaSortCreatedAt;
  const factory MetaSort.updatedAt({@Default(false) bool desc}) = _MetaSortUpdatedAt;

  static const MetaSort defaultSort = MetaSort.updatedAt(desc: true);
}
