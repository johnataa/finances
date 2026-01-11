import '_contracts/custom_error.dart';

final class Result<T> {
  final T? _subject;
  final CustomError? _error;

  /// A flag indicating whether the result is successful.
  bool get isSuccess => _error == null && _subject != null;

  /// The result subject.
  /// *To avoid potential [TypeError], check the [isSuccess] property before using it.*
  T get subject => _subject!;

  // The custom error.
  /// *To avoid potential [TypeError], check the [isSuccess] property before using it.*
  CustomError get error => _error!;

  const Result.success(T this._subject) : _error = null;
  const Result.failure(CustomError this._error) : _subject = null;
}
