import 'package:finances/shared/validation.dart';
import 'package:finances/shared/value_objects/value_object.dart';

import 'error_mock.dart';

/// Represents a mock class implementation of the abstract [ValueObject] class.
class ValueObjectMock<T> extends ValueObject<T> {
  ValueObjectMock({required T value, required List<bool> isValidWhen})
    : super(value, _validate(value, isValidWhen));

  static Iterable<Validation> _validate<T>(T value, List<bool> isValidWhen) =>
      isValidWhen.map(
        (isValid) =>
            Validation(when: !isValid, pushError: ErrorMock.defaultInstance),
      );
}
