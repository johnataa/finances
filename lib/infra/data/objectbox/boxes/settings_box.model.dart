import 'package:objectbox/objectbox.dart';

@Entity()
final class SettingsBM {
  @Id(assignable: true)
  int id;

  @Property(type: PropertyType.date)
  DateTime? updatedAt;

  int theme;
  int? exchangeApi;
  String? exchangeApiKey;

  SettingsBM({
    this.id = 0,
    this.updatedAt,
    required this.theme,
    this.exchangeApi,
    this.exchangeApiKey,
  });
}
