import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  final bool isSavingsAccount;

  const TransactionScreen({super.key, this.isSavingsAccount = false});

  @override
  Widget build(BuildContext context) => const Center(child: Text('Transactions'));
}
