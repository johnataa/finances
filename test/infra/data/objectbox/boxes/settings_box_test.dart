import 'package:finances/features/settings/exchange_api.dart';
import 'package:finances/features/settings/settings.dart';
import 'package:finances/infra/data/objectbox/boxes/settings_box.dart';
import 'package:finances/infra/data/objectbox/gen/objectbox.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/infra/data/objectbox/store_mock.dart';

void main() {
  late Store store;
  late SettingsBox box;

  setUp(() async {
    store = await openInMemoryStore();
    box = SettingsBox(store);
  });

  tearDown(() {
    store.close();
  });

  group('SettingsBox', () {
    test('get() returns default configuration when empty', () async {
      // Act
      final settings = await box.get();
      
      // Assert
      expect(settings.theme, ThemeMode.system);
      expect(settings.exchangeApi, isNull);
      expect(settings.exchangeApiKey, isNull);
    });

    test('persist() saves new settings and get() retrieves them', () async {
      // Arrange
      const newSettings = Settings(
        theme: ThemeMode.dark,
        exchangeApi: ExchangeApi.openExchangeRates,
        exchangeApiKey: 'my-api-key',
      );

      // Act
      await box.persist(newSettings);
      final retrievedSettings = await box.get();

      // Assert
      expect(retrievedSettings.theme, ThemeMode.dark);
      expect(retrievedSettings.exchangeApi, ExchangeApi.openExchangeRates);
      expect(retrievedSettings.exchangeApiKey, 'my-api-key');
    });
    
    test('persist() overwrites existing settings and get() retrieves them', () async {
      // Arrange
      await box.persist(const Settings(
        theme: ThemeMode.dark,
        exchangeApi: ExchangeApi.openExchangeRates,
        exchangeApiKey: 'my-api-key',
      ));

      // Act
      await box.persist(const Settings(
        theme: ThemeMode.light,
        exchangeApi: null,
        exchangeApiKey: null,
      ));
      final retrievedSettings = await box.get();

      // Assert
      expect(retrievedSettings.theme, ThemeMode.light);
      expect(retrievedSettings.exchangeApi, isNull);
      expect(retrievedSettings.exchangeApiKey, isNull);
    });
  });
}
