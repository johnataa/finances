import './error.dart';

class Result<T> {
  final T? _subject;
  final Error? _error;

  bool get isSuccess => _error == null && _subject != null;

  T get subject => _subject!;
  Error get error => _error!;

  const Result.success(T this._subject) : _error = null;
  const Result.failure(Error this._error) : _subject = null;
}
