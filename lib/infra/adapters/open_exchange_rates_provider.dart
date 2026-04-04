import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:http/http.dart' as http;

import '../../core/abstractions/result.dart';
import '../../core/domain/exchange/errors.dart';
import '../../core/domain/exchange/exchange_rates.dart';
import '../../core/interfaces/exchange_rate_provider.dart';
import '../../core/domain/money/currency.dart';

/// Fetches exchange rates from the OpenExchangeRates API.
///
/// Uses the free-tier endpoint, where USD is always the base currency.
/// Docs: https://docs.openexchangerates.org/reference/latest-json
final class OpenExchangeRatesProvider implements IExchangeRateProvider {
  static final Uri _uri = Uri.parse('https://openexchangerates.org/api/latest.json');

  final String _appKey;
  final http.Client _client;

  OpenExchangeRatesProvider({required String appKey, http.Client? client})
    : _appKey = appKey,
      _client = client ?? http.Client();

  @override
  Future<Result<ExchangeRates>> getRates(List<Currency> currencies) async {
    try {
      final symbols = currencies
          .where((c) => c != Currency.usd)
          .map((c) => c.name.toUpperCase())
          .join(',');

      final uri = _uri.replace(
        queryParameters: {'app_id': _appKey, 'symbols': symbols, 'base': 'USD'},
      );

      final response = await _client.get(uri);

      if (response.statusCode != 200) {
        return Result.failure(ExchangeErrors.apiError(response.statusCode, response.body));
      }

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final rawRates = json['rates'] as Map<String, dynamic>;

      final rates = <Currency, Decimal>{
        for (final currency in currencies.where((c) => c != Currency.usd))
          currency: Decimal.parse(rawRates[currency.name.toUpperCase()].toString()),
      };

      return Result.success(ExchangeRates(rates));
    } catch (e) {
      return Result.failure(ExchangeErrors.networkError(e.toString()));
    }
  }

  void dispose() => _client.close();
}
