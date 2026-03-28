import 'package:flutter/material.dart';

import '../../navigation/pages.dart';
import 'menu_bar_item.dart';

class MenuBar extends StatelessWidget {
  final Pages currentPage;
  final Function(Pages) onTap;

  const MenuBar({super.key, required this.currentPage, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MenuBarItem(
            page: Pages.transactions,
            isSelected: currentPage == Pages.transactions,
            onTap: onTap,
          ),
          const SizedBox(width: 8),
          MenuBarItem(
            page: Pages.schedules,
            isSelected: currentPage == Pages.schedules,
            onTap: onTap,
          ),
          const SizedBox(width: 8),
          MenuBarItem(
            page: Pages.settings,
            isSelected: currentPage == Pages.settings,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
