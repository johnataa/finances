enum TransactionStatus {
  pending(id: 1),
  confirmed(id: 2),
  canceled(id: 3),
  reversed(id: 4);

  const TransactionStatus({required this.id});

  final int id;

  static TransactionStatus fromId(int id) =>
      TransactionStatus.values.firstWhere((status) => status.id == id);
}
