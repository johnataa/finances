import '../_contracts/value_object.dart';
import '../validation.dart';
import 'errors.dart';

final class Name extends ValueObject<String> {
  static const int maxLength = 64;
  static const int minLength = 3;

  /// Instantiates and **validates** a [Name] value object.
  Name(String name) : super(name, _validate(name));

  static Iterable<Validation> _validate(String name) sync* {
    yield Validation(
      when: name.length < Name.minLength || name.length > Name.maxLength,
      pushError: const InvalidNameLengthError(),
    );
  }
}
