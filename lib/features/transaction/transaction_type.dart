enum TransactionType {
  credit(id: 1),
  debit(id: 2),
  transfer(id: 3);

  const TransactionType({required this.id});

  final int id;

  static TransactionType fromId(int id) =>
      TransactionType.values.firstWhere((type) => type.id == id);
}
