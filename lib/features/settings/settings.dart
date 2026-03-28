import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'exchange_api.dart';

part 'settings.freezed.dart';

@freezed
sealed class Settings with _$Settings {
  const factory Settings({
    @Default(ThemeMode.system) ThemeMode theme,
    ExchangeApi? exchangeApi,
    String? exchangeApiKey,
  }) = _Settings;
}
