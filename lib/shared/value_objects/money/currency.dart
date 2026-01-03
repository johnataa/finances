enum Currency {
  usd('\$'),
  eur('€'),
  brl('R\$');

  const Currency(this.symbol);

  final String symbol;

  static Currency parse(String currencyStr) =>
      Currency.values.firstWhere((v) => v.name == currencyStr);
}
