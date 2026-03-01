enum FrequencyUnit {
  day(id: 1),
  week(id: 2),
  month(id: 3),
  year(id: 4);

  const FrequencyUnit({required this.id});
  final int id;

  static FrequencyUnit fromId(int id) => FrequencyUnit.values.firstWhere((unit) => unit.id == id);
}
