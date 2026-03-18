import 'package:freezed_annotation/freezed_annotation.dart';

import 'custom_error.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const Result._();

  const factory Result.success(T value) = Success<T>;
  const factory Result.failure(CustomError error) = Failure<T>;

  T? getOrNull() => switch (this) {
    Success<T> s => s.value,
    Failure<T> _ => null,
    _ => null,
  };

  T getOrThrow() => switch (this) {
    Success<T> s => s.value,
    Failure<T> f => throw f.error,
    _ => throw Exception('Unknown result type'),
  };

  T getOrDefault(T defaultValue) => switch (this) {
    Success<T> s => s.value,
    Failure<T> _ => defaultValue,
    _ => defaultValue,
  };
}
