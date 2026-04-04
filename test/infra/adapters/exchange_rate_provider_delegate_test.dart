import 'package:finances/core/abstractions/result.dart';
import 'package:finances/core/domain/exchange/exchange_rates.dart';
import 'package:finances/core/domain/money/currency.dart';
import 'package:finances/features/settings/exchange_api.dart';
import 'package:finances/features/settings/settings.dart';
import 'package:finances/infra/adapters/exchange_rate_provider_delegate.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import '../../mocks/infra/adapters/http_client_mock.dart';
import '../../mocks/infra/data/objectbox/boxes.dart';

void main() {
  late SettingsBoxMock mockSettingsRepo;
  late HttpClientMock mockHttpClient;
  late ExchangeRateProviderDelegate delegate;

  setUpAll(() {
    registerFallbackValue(Uri());
  });

  setUp(() {
    mockSettingsRepo = SettingsBoxMock();
    mockHttpClient = HttpClientMock();
    delegate = ExchangeRateProviderDelegate(
      settingsRepository: mockSettingsRepo,
      httpClient: mockHttpClient,
    );
  });

  group('ExchangeRateProviderDelegate', () {
    test('Should return Failure if no API is selected', () async {
      // Arrange
      when(() => mockSettingsRepo.get()).thenAnswer((_) async => const Settings(exchangeApi: null));

      // Act
      final result = await delegate.getRates([Currency.brl]);

      // Assert
      expect(result, isA<Failure<ExchangeRates>>());
      expect((result as Failure).error.code, 'ExchangeError#001');
    });

    test('Should return Failure if API Key is empty', () async {
      // Arrange
      when(() => mockSettingsRepo.get()).thenAnswer(
        (_) async =>
            const Settings(exchangeApi: ExchangeApi.openExchangeRates, exchangeApiKey: ' '),
      );

      // Act
      final result = await delegate.getRates([Currency.brl]);

      // Assert
      expect(result, isA<Failure<ExchangeRates>>());
      expect((result as Failure).error.code, 'ExchangeError#001');
    });

    test('Should lazily create and use OpenExchangeRatesProvider', () async {
      // Arrange
      const apiKey = 'test_key';
      when(() => mockSettingsRepo.get()).thenAnswer(
        (_) async =>
            const Settings(exchangeApi: ExchangeApi.openExchangeRates, exchangeApiKey: apiKey),
      );

      // We expect the internal provider to make a call.
      // Since we can't easily mock the internal provider, we verify the HTTP call it makes.
      when(
        () => mockHttpClient.get(any()),
      ).thenAnswer((_) async => http.Response('{"rates": {"BRL": 5.0}}', 200));

      // Act
      final result = await delegate.getRates([Currency.brl]);

      // Assert
      expect(result, isA<Success<ExchangeRates>>());
      verify(
        () => mockHttpClient.get(
          any(that: predicate<Uri>((uri) => uri.queryParameters['app_id'] == apiKey)),
        ),
      ).called(1);
    });
  });
}
