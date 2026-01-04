import 'custom_error.dart';

final class Validation {
  final CustomError pushError;
  final bool when;

  const Validation({required this.pushError, required this.when});
}
