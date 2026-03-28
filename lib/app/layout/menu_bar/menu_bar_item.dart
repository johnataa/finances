import 'package:flutter/material.dart';

import '../../navigation/pages.dart';

class MenuBarItem extends StatelessWidget {
  final Pages page;
  final bool isSelected;
  final ValueChanged<Pages> onTap;

  const MenuBarItem({
    super.key,
    required this.page,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final onSurface = colorScheme.onSurface;

    return GestureDetector(
      onTap: () => onTap(page),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? onSurface : Colors.transparent,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(page.icon, size: 18, color: isSelected ? colorScheme.surface : theme.hintColor),
            const SizedBox(height: 2),
            Text(
              page.title,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: isSelected ? colorScheme.surface : theme.hintColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
