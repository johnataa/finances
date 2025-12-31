import 'error.dart';

final class Validation<T> {
  final bool Function(T value) when;
  final Error pushError;

  const Validation({required this.when, required this.pushError});
}
