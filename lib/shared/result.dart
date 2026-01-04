import 'custom_error.dart';

final class Result<T> {
  final T? _subject;
  final CustomError? _error;

  bool get isSuccess => _error == null && _subject != null;

  T get subject => _subject!;
  CustomError get error => _error!;

  const Result.success(T this._subject) : _error = null;
  const Result.failure(CustomError this._error) : _subject = null;
}
