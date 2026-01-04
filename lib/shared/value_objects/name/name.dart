import '../../validation.dart';
import '../value_object.dart';
import 'errors.dart';

final class Name extends ValueObject<String> {
  static const int maxLength = 64;
  static const int minLength = 3;

  /// Instantiates and **validates** a [Name] value object.
  Name(String value) : super(value, _validate(value));

  static Iterable<Validation> _validate(String name) sync* {
    yield Validation(
      when: name.length < Name.minLength || name.length > Name.maxLength,
      pushError: InvalidNameLengthError(),
    );
  }
}
