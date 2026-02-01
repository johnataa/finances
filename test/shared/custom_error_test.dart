import 'package:flutter_test/flutter_test.dart';

import '../mocks/error_mock.dart';

void main() {
  group('CustomError', () {
    test('equality works correctly', () {
      const e1 = ErrorMock('1', 'msg');
      const e2 = ErrorMock('1', 'msg');
      const e3 = ErrorMock('2', 'msg');
      const e4 = ErrorMock('1', 'other');

      expect(e1 == e2, true);
      expect(e1 == e3, false);
      expect(e1 == e4, false);
      expect(e1 == Object(), false);
    });

    test('hashCode is consistent with equality', () {
      const e1 = ErrorMock('1', 'msg');
      const e2 = ErrorMock('1', 'msg');

      expect(e1.hashCode, e2.hashCode);
    });

    test('identical objects are equal', () {
      const e1 = ErrorMock('1', 'msg');
      expect(e1 == e1, true);
    });
  });
}
