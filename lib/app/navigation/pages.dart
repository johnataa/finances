import 'package:flutter/material.dart';

enum Pages {
  transactions(title: 'Transactions', icon: Icons.show_chart),
  schedules(title: 'Schedules', icon: Icons.calendar_month),
  settings(title: 'Settings', icon: Icons.settings);

  final String title;
  final IconData icon;

  const Pages({required this.title, required this.icon});
}
