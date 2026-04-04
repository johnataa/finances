import 'package:http/http.dart' as http;

import '../../core/abstractions/result.dart';
import '../../core/domain/exchange/errors.dart';
import '../../core/domain/exchange/exchange_rates.dart';
import '../../core/interfaces/exchange_rate_provider.dart';
import '../../core/domain/money/currency.dart';
import '../../features/settings/exchange_api.dart';
import '../../features/settings/settings.repository.dart';
import 'open_exchange_rates_provider.dart';

/// Orchestrates different exchange rate providers based on user settings.
///
/// Implements a lazy strategy pattern, instantiating the concrete provider
/// only when needed and caching it as long as the provider type or API key
/// doesn't change.
final class ExchangeRateProviderDelegate implements IExchangeRateProvider {
  final ISettingsRepository _settingsRepository;
  final http.Client _httpClient;

  IExchangeRateProvider? _cachedProvider;
  ExchangeApi? _cachedApi;
  String? _cachedApiKey;

  ExchangeRateProviderDelegate({
    required ISettingsRepository settingsRepository,
    http.Client? httpClient,
  }) : _settingsRepository = settingsRepository,
       _httpClient = httpClient ?? http.Client();

  @override
  Future<Result<ExchangeRates>> getRates(List<Currency> currencies) async {
    final settings = await _settingsRepository.get();
    final api = settings.exchangeApi;
    final apiKey = settings.exchangeApiKey;

    if (api == null || apiKey == null || apiKey.trim().isEmpty) {
      return Result.failure(ExchangeErrors.apiKeyNotConfiguredError());
    }

    final provider = _resolveProvider(api, apiKey);
    return provider.getRates(currencies);
  }

  IExchangeRateProvider _resolveProvider(ExchangeApi api, String apiKey) {
    if (_cachedApi == api && _cachedApiKey == apiKey && _cachedProvider != null) {
      return _cachedProvider!;
    }

    _cachedApi = api;
    _cachedApiKey = apiKey;

    _cachedProvider = switch (api) {
      ExchangeApi.openExchangeRates => OpenExchangeRatesProvider(
        appKey: apiKey,
        client: _httpClient,
      ),
    };

    return _cachedProvider!;
  }
}
