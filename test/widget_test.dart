import 'package:finances/features/account/account.repository.dart';
import 'package:finances/features/category/category.repository.dart';
import 'package:finances/features/schedule/schedule.repository.dart';
import 'package:finances/features/settings/settings.repository.dart';
import 'package:finances/features/transaction/transaction.repository.dart';
import 'package:finances/infra/data/objectbox/gen/objectbox.g.dart';
import 'package:finances/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

import 'mocks/infra/data/objectbox/boxes.dart';
import 'mocks/infra/data/objectbox/store_mock.dart';

void main() {
  final sl = GetIt.instance;

  setUp(() {
    sl.reset();

    // Arrange: Register all necessary mocks for the App to start
    sl.registerSingleton<Store>(StoreMock());
    sl.registerSingleton<IAccountRepository>(AccountBoxMock());
    sl.registerSingleton<ICategoryRepository>(CategoryBoxMock());
    sl.registerSingleton<IScheduleRepository>(ScheduleBoxMock());
    sl.registerSingleton<ITransactionRepository>(TransactionBoxMock());
    sl.registerSingleton<ISettingsRepository>(SettingsBoxMock());
  });

  testWidgets('App smoke test - verifies initial screen and navigation', (
    WidgetTester tester,
  ) async {
    // Arrange
    await tester.pumpWidget(const FinanceApp());
    await tester.pump(); // Allow providers and cubits to initialize

    // Assert: Verify we are on the Transactions screen initially
    // We expect 2 "Transactions" (One in the screen, one in the MenuBar)
    expect(find.text('Transactions'), findsNWidgets(2));
    expect(find.byIcon(Icons.show_chart), findsOneWidget);

    // Act: Tap on the Schedules menu item (Searching by Icon ensures we hit the MenuBar)
    await tester.tap(find.byIcon(Icons.calendar_month));
    await tester.pump();

    // Assert: Verify we navigated to the Schedules screen
    expect(find.text('Schedules'), findsNWidgets(2));

    // Act: Tap on the Settings menu item
    await tester.tap(find.byIcon(Icons.settings));
    await tester.pump();

    // Assert: Verify we navigated to the Settings screen
    expect(find.text('Settings'), findsNWidgets(2));
  });
}
