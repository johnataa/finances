import 'package:finances/shared/_contracts/custom_error.dart';
import 'package:flutter_test/flutter_test.dart';

void testErrorCodes(Map<CustomError, String> testCases) {
  group("Frequency error codes", () {
    for (final testCase in testCases.entries) {
      String errorName = testCase.key.runtimeType.toString();
      test(
        "$errorName code should be '${testCase.value}'",
        () => expect(testCase.key.code, testCase.value),
      );
    }
  });
}
