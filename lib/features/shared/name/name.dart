import 'package:freezed_annotation/freezed_annotation.dart';

import '../result.dart';
import 'errors.dart';

part 'name.freezed.dart';

@freezed
abstract class Name with _$Name {
  static const int maxLength = 64;
  static const int minLength = 3;

  const factory Name._(String value) = _Name;

  static Result<Name> create(String value) {
    if (value.length < minLength || value.length > maxLength) {
      return const Result.failure(InvalidNameLengthError());
    }

    return Result.success(Name._(value));
  }
}
