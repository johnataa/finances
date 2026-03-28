import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

enum FilterLogic { and, or }

@freezed
sealed class StringFilter with _$StringFilter {
  const factory StringFilter.equals(String input) = StringEquals;
  const factory StringFilter.contains(String input) = StringContains;
}

@freezed
sealed class IntFilter with _$IntFilter {
  const factory IntFilter.equals(int input) = IntEquals;
  const factory IntFilter.greaterThan(int input) = IntGreaterThan;
  const factory IntFilter.lessThan(int input) = IntLessThan;
}

@freezed
sealed class DateTimeFilter with _$DateTimeFilter {
  const factory DateTimeFilter.equals(DateTime input) = DateTimeEquals;
  const factory DateTimeFilter.beforeThan(DateTime input) = DateTimeBeforeThan;
  const factory DateTimeFilter.afterThan(DateTime input) = DateTimeAfterThan;
  const factory DateTimeFilter.between(DateTime start, DateTime end) = DateTimeBetween;
}
