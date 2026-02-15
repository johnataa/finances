enum ScheduleType {
  income(id: 1),
  expense(id: 2),
  savings(id: 3);

  const ScheduleType({required this.id});
  final int id;

  static ScheduleType fromId(int id) =>
      ScheduleType.values.firstWhere((type) => type.id == id);
}
