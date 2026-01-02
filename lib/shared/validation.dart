import 'error.dart';

final class Validation {
  final bool when;
  final Error pushError;

  const Validation({required this.when, required this.pushError});
}
