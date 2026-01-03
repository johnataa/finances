import '../error.dart';
import '../validation.dart';

abstract class ValueObject<T> {
  final T? _value;
  final Error? _error;

  bool get hasError => _error != null;
  Error get error => _error!;
  T get value => _value!;

  ValueObject(this._value, [Iterable<Validation> validations = const []])
    : _error = validations.where((v) => v.when).firstOrNull?.pushError;

  @override
  bool operator ==(Object other) {
    if (runtimeType == other.runtimeType) {
      return hashCode == other.hashCode;
    }

    return false;
  }

  @override
  int get hashCode => _value.hashCode;

  @override
  String toString() => _value?.toString() ?? "";
}
