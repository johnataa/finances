import 'package:flutter/material.dart' hide MenuBar;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../navigation/page_cubit.dart';
import '../navigation/pages.dart';
import 'menu_bar/menu_bar.dart';

class AppScaffold extends StatelessWidget {
  final Map<Pages, Widget> pages;

  const AppScaffold({super.key, required this.pages});

  void Function(Pages) _selectPage(BuildContext context) =>
      (page) => context.read<PageCubit>().goTo(page);

  @override
  Widget build(BuildContext context) => BlocBuilder<PageCubit, Pages>(
    builder: (context, currentPage) => Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(child: pages[currentPage] ?? const SizedBox.shrink()),
      floatingActionButton: MenuBar(currentPage: currentPage, onTap: _selectPage(context)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ),
  );
}
