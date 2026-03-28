import 'package:finances/app/navigation/page_cubit.dart';
import 'package:finances/app/navigation/pages.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageCubit', () {
    late PageCubit cubit;

    setUp(() {
      cubit = PageCubit();
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is Pages.transactions', () {
      // Assert
      expect(cubit.state, Pages.transactions);
    });

    test('goTo emits the correct page', () {
      // Act
      cubit.goTo(Pages.schedules);

      // Assert
      expect(cubit.state, Pages.schedules);
    });

    test('goTo emits settings page when requested', () {
      // Act
      cubit.goTo(Pages.settings);

      // Assert
      expect(cubit.state, Pages.settings);
    });
  });
}
