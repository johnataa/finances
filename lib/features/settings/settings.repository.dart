import 'settings.dart';

abstract interface class ISettingsRepository {
  Future<Settings> get();
  Future<void> persist(Settings settings);
  void dispose();
}
