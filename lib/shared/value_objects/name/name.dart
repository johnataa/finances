import '../../validation.dart';
import '../value_object.dart';
import 'errors.dart';

final class Name extends ValueObject<String> {
  static const int maxLength = 64;
  static const int minLength = 3;

  static final List<Validation<String>> _validations = [
    Validation(
      pushError: NameErrors.invalidNameLengthError,
      when: (name) =>
          name.length < Name.minLength || name.length > Name.maxLength,
    ),
  ];

  Name(String value) : super(value, _validations);
}
