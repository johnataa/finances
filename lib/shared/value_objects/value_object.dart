import '../error.dart';
import '../validation.dart';

abstract class ValueObject<T> {
  final T value;
  final Error? _error;

  bool get hasError => _error != null;
  Error get error => _error!;

  ValueObject(this.value, [List<Validation<T>> validations = const []])
    : _error = validations.where((v) => v.when(value)).firstOrNull?.pushError;

  @override
  bool operator ==(Object other) {
    if (runtimeType == other.runtimeType) {
      return hashCode == other.hashCode;
    }

    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value.toString();
}
