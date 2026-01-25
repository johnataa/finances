import 'package:freezed_annotation/freezed_annotation.dart';

import 'custom_error.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const Result._();

  const factory Result.success(T value) = Success<T>;
  const factory Result.failure(CustomError error) = Failure<T>;

  T? getOrNull() => map(success: (s) => s.value, failure: (f) => null);
  T getOrThrow() => map(success: (s) => s.value, failure: (f) => throw f.error);
  T getOrDefault(T defaultValue) =>
      map(success: (s) => s.value, failure: (f) => defaultValue);
}
