import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';

import '../../../../features/settings/exchange_api.dart';
import '../../../../features/settings/settings.dart';
import '../../../../features/settings/settings.repository.dart';
import 'settings_box.model.dart';

final class SettingsBox implements ISettingsRepository {
  final Store _store;
  final Box<SettingsBM> _box;

  static const int _singleId = 1;

  SettingsBox(this._store) : _box = _store.box<SettingsBM>();

  @override
  Future<Settings> get() async {
    final settings = await _box.getAsync(_singleId);

    if (settings == null) {
      return Settings();
    }

    return Settings(
      theme: ThemeMode.values[settings.theme],
      exchangeApi: ExchangeApi.fromId(settings.exchangeApi),
      exchangeApiKey: settings.exchangeApiKey,
    );
  }

  @override
  Future<void> persist(Settings settings) async {
    final settingsBM = SettingsBM(
      id: _singleId,
      theme: settings.theme.index,
      exchangeApi: settings.exchangeApi?.id,
      exchangeApiKey: settings.exchangeApiKey,
    );

    await _box.putAsync(settingsBM);
  }

  @override
  void dispose() => _store.close();
}
