import 'package:freezed_annotation/freezed_annotation.dart';

import '../result.dart';
import 'errors.dart';

part 'name.freezed.dart';

@freezed
abstract class Name with _$Name {
  const Name._();
  const factory Name._create(String value) = _Name;

  static const int maxLength = 64;
  static const int minLength = 3;

  static Name create(String value) => tryCreate(value).getOrThrow();

  /// Tries to create a [Name] from a string.
  /// Returns a [Result] with the created [Name] or an error.
  static Result<Name> tryCreate(String value) {
    if (value.length < minLength || value.length > maxLength) {
      return Result.failure(InvalidNameLengthError(minLength, maxLength));
    }

    if (value.trim().isEmpty) {
      return Result.failure(const EmptyNameError());
    }

    return Result.success(Name._create(value));
  }
}
