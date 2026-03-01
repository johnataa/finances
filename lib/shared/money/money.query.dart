import 'package:freezed_annotation/freezed_annotation.dart';

part 'money.query.freezed.dart';

@freezed
sealed class MoneyFilter with _$MoneyFilter {
  const factory MoneyFilter.equals({required String amount, int? currency}) = MoneyEquals;
  const factory MoneyFilter.greaterThan({required String amount, int? currency}) = MoneyGreaterThan;
  const factory MoneyFilter.lessThan({required String amount, int? currency}) = MoneyLessThan;
}
