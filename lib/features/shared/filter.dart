import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

enum FilterType { union, intersection }

@freezed
sealed class Filter with _$Filter {
  const factory Filter.string(StringFilter prop) = _StringFilter;
  const factory Filter.int(IntFilter prop) = _IntFilter;
  const factory Filter.dateTime(DateTimeFilter prop) = _DateTimeFilter;
}

@freezed
sealed class StringFilter with _$StringFilter {
  const factory StringFilter.equals(String input) = _StringFilterEquals;
  const factory StringFilter.contains(String input) = _StringFilterContains;
}

@freezed
sealed class IntFilter with _$IntFilter {
  const factory IntFilter.equals(int input) = _IntFilterEquals;
  const factory IntFilter.greaterThan(int input) = _IntFilterGreaterThan;
  const factory IntFilter.lessThan(int input) = _IntFilterLessThan;
}

@freezed
sealed class DateTimeFilter with _$DateTimeFilter {
  const factory DateTimeFilter.equals(DateTime input) = _DateTimeFilterEquals;
  const factory DateTimeFilter.beforeThan(DateTime input) = _DateTimeFilterBeforeThan;
  const factory DateTimeFilter.afterThan(DateTime input) = _DateTimeFilterAfterThan;
}
