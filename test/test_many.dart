import 'package:flutter_test/flutter_test.dart' as ft;

/// Creates many test cases with the given description, params and test body.
///
/// The [test] body is run for all items in the [params] list.
/// The current item of [params] is provided in the [test] body callback.
///
/// For example:
///
///     testMany("Should all be even.", params: [2,4,6], test: (value) {
///       expect(value.isEven, true);
///     });
///
/// Combining lists:
///
///     enum FrequencyUnit { day, week, month, year }
///
///     class Frequency {
///       final int value;
///       final FrequencyUnit unit;
///
///       bool get isValid => value > 0;
///
///       const Frequency(this.value, this.unit);
///     }
///
///     testMany(
///       "Should be invalid when value is lesser than one.",
///       params: combine([0, -1], FrequencyUnit.values),
///       test: (params) {
///         // Arrange
///         final (value, unit) = params;
///
///         // Act
///         const Frequency frequency = Frequency(value, unit);
///
///         // Assert
///         expect(frequency.isValid, false);
///       });
///
void testMany<T>(
  Object description, {
  required Iterable<T> params,
  required void Function(T value) test,
}) {
  for (final T param in params) {
    final String testDescription = _getDescription(description, param);
    ft.test(testDescription, () => test(param));
  }
}

String _getDescription(Object description, dynamic params) {
  String paramsStr = "[$params]".replaceFirst("[(", "[").replaceFirst(")]", "]");
  return "$description $paramsStr";
}

/// Combine two lists in a single list of tuples.
Iterable<(T1, T2)> combine<T1, T2>(Iterable<T1> s1, Iterable<T2> s2) sync* {
  for (final T1 t1 in s1) {
    for (final T2 t2 in s2) {
      yield (t1, t2);
    }
  }
}

/// Combine three lists in a single list of tuples.
Iterable<(T1, T2, T3)> combine3<T1, T2, T3>(
  Iterable<T1> s1,
  Iterable<T2> s2,
  Iterable<T3> s3,
) sync* {
  for (final T1 t1 in s1) {
    for (final T2 t2 in s2) {
      for (final T3 t3 in s3) {
        yield (t1, t2, t3);
      }
    }
  }
}

/// Combine four lists in a single list of tuples.
Iterable<(T1, T2, T3, T4)> combine4<T1, T2, T3, T4>(
  Iterable<T1> s1,
  Iterable<T2> s2,
  Iterable<T3> s3,
  Iterable<T4> s4,
) sync* {
  for (final T1 t1 in s1) {
    for (final T2 t2 in s2) {
      for (final T3 t3 in s3) {
        for (final T4 t4 in s4) {
          yield (t1, t2, t3, t4);
        }
      }
    }
  }
}

/// Combine five lists in a single list of tuples.
Iterable<(T1, T2, T3, T4, T5)> combine5<T1, T2, T3, T4, T5>(
  Iterable<T1> s1,
  Iterable<T2> s2,
  Iterable<T3> s3,
  Iterable<T4> s4,
  Iterable<T5> s5,
) sync* {
  for (final T1 t1 in s1) {
    for (final T2 t2 in s2) {
      for (final T3 t3 in s3) {
        for (final T4 t4 in s4) {
          for (final T5 t5 in s5) {
            yield (t1, t2, t3, t4, t5);
          }
        }
      }
    }
  }
}
