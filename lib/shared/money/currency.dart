enum Currency {
  usd(id: 1, symbol: '\$'),
  eur(id: 2, symbol: '€'),
  brl(id: 3, symbol: 'R\$');

  const Currency({required this.id, required this.symbol});

  final int id;
  final String symbol;

  static Currency fromId(int id) => Currency.values.firstWhere((c) => c.id == id);
}
