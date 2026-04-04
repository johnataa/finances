import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:finances/core/abstractions/result.dart';
import 'package:finances/core/domain/exchange/exchange_rates.dart';
import 'package:finances/core/domain/money/currency.dart';
import 'package:finances/infra/adapters/open_exchange_rates_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import '../../mocks/infra/adapters/http_client_mock.dart';

void main() {
  late HttpClientMock mockClient;
  late OpenExchangeRatesProvider provider;
  const appId = 'test_app_id';

  setUpAll(() {
    registerFallbackValue(Uri());
  });

  setUp(() {
    mockClient = HttpClientMock();
    provider = OpenExchangeRatesProvider(appKey: appId, client: mockClient);
  });

  group('OpenExchangeRatesProvider.getRates', () {
    test('Should return Success<ExchangeRates> on status 200', () async {
      // Arrange
      final responseBody = jsonEncode({
        'rates': {'BRL': 5.0, 'EUR': 0.9},
      });

      when(() => mockClient.get(any())).thenAnswer((_) async => http.Response(responseBody, 200));

      // Act
      final result = await provider.getRates([Currency.brl, Currency.eur]);

      // Assert
      expect(result, isA<Success<ExchangeRates>>());
      final rates = result.getOrThrow();
      expect(rates.rateFor(Currency.brl), Decimal.parse('5.0'));
      expect(rates.rateFor(Currency.eur), Decimal.parse('0.9'));

      verify(
        () => mockClient.get(
          any(
            that: predicate<Uri>(
              (uri) =>
                  uri.queryParameters['app_id'] == appId &&
                  uri.queryParameters['symbols'] == 'BRL,EUR',
            ),
          ),
        ),
      ).called(1);
    });

    test('Should return Failure on status non-200', () async {
      // Arrange
      when(
        () => mockClient.get(any()),
      ).thenAnswer((_) async => http.Response('Invalid App ID', 401));

      // Act
      final result = await provider.getRates([Currency.brl]);

      // Assert
      expect(result, isA<Failure<ExchangeRates>>());
      final error = (result as Failure).error;
      expect(error.code, 'ExchangeError#003');
      expect(error.message, contains('401'));
      expect(error.message, contains('Invalid App ID'));
    });

    test('Should return Failure on network exception', () async {
      // Arrange
      when(() => mockClient.get(any())).thenThrow(Exception('No internet'));

      // Act
      final result = await provider.getRates([Currency.brl]);

      // Assert
      expect(result, isA<Failure<ExchangeRates>>());
      final error = (result as Failure).error;
      expect(error.code, 'ExchangeError#002');
      expect(error.message, contains('No internet'));
    });
  });
}
