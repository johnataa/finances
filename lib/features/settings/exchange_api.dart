enum ExchangeApi {
  openExchangeRates(id: 1, name: 'Open Exchange Rates');

  const ExchangeApi({required this.id, required this.name});
  final int id;
  final String name;

  static ExchangeApi? fromId(int? id) =>
      id == null ? null : ExchangeApi.values.firstWhere((api) => api.id == id);
}
