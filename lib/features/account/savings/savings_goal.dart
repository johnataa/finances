enum SavingsGoal {
  free(id: 1),
  coverExpenses(id: 2),
  coverCustomAmount(id: 3);

  const SavingsGoal({required this.id});

  final int id;

  static SavingsGoal fromId(int id) => SavingsGoal.values.firstWhere((g) => g.id == id);
}
