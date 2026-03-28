import 'package:finances/app/layout/menu_bar/menu_bar.dart';
import 'package:finances/app/layout/menu_bar/menu_bar_item.dart';
import 'package:finances/app/navigation/pages.dart';
import 'package:flutter/material.dart' hide MenuBar;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MenuBar Widget Tests', () {
    testWidgets('renders all menu items', (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MenuBar(
              currentPage: Pages.transactions,
              onTap: (_) {},
            ),
          ),
        ),
      );

      // Assert
      expect(find.byType(MenuBarItem), findsNWidgets(3));
      expect(find.text('Transactions'), findsOneWidget);
      expect(find.text('Schedules'), findsOneWidget);
      expect(find.text('Settings'), findsOneWidget);
    });

    testWidgets('calls onTap with correct page when clicked', (WidgetTester tester) async {
      // Arrange
      Pages? selectedPage;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MenuBar(
              currentPage: Pages.transactions,
              onTap: (page) => selectedPage = page,
            ),
          ),
        ),
      );

      // Act
      await tester.tap(find.text('Schedules'));
      await tester.pump();

      // Assert
      expect(selectedPage, Pages.schedules);
    });

    testWidgets('highlights the selected page', (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MenuBar(
              currentPage: Pages.settings,
              onTap: (_) {},
            ),
          ),
        ),
      );

      // Assert
      final settingsItem = tester.widget<MenuBarItem>(
        find.byWidgetPredicate((w) => w is MenuBarItem && w.page == Pages.settings),
      );
      final transactionsItem = tester.widget<MenuBarItem>(
        find.byWidgetPredicate((w) => w is MenuBarItem && w.page == Pages.transactions),
      );

      expect(settingsItem.isSelected, isTrue);
      expect(transactionsItem.isSelected, isFalse);
    });
  });
}
