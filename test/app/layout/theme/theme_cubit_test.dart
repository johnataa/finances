import 'package:finances/app/layout/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ThemeCubit', () {
    late ThemeCubit cubit;

    setUp(() {
      cubit = ThemeCubit();
    });

    tearDown(() {
      cubit.close();
    });

    test('initial state is ThemeMode.system', () {
      // Assert
      expect(cubit.state, ThemeMode.system);
    });

    test('setTheme emits dark theme when requested', () {
      // Act
      cubit.setTheme(ThemeMode.dark);

      // Assert
      expect(cubit.state, ThemeMode.dark);
    });

    test('setTheme emits light theme when requested', () {
      // Act
      cubit.setTheme(ThemeMode.light);

      // Assert
      expect(cubit.state, ThemeMode.light);
    });

    test('setTheme emits system theme when requested', () {
      // Act
      cubit.setTheme(ThemeMode.system);

      // Assert
      expect(cubit.state, ThemeMode.system);
    });
  });
}
