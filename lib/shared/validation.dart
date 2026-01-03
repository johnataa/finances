import 'error.dart';

final class Validation {
  final Error pushError;
  final bool when;

  const Validation({required this.pushError, required this.when});
}
