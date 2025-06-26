import 'package:expense_tracker/core/models/expense_model.dart';
import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

final List<ExpenseModel> _registeredExpensed = [
  ExpenseModel(
    title: 'FLutter Course',
    amount: 19.99,
    date: DateTime.now(),
    category: Category.work,
  ),
  ExpenseModel(
    title: 'Cinema',
    amount: 15.99,
    date: DateTime.now(),
    category: Category.leisure,
  ),
];

class _ExpenseScreenState extends State<ExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('The Cart'),
          Expanded(child: ExpensesList(expenses: _registeredExpensed)),
        ],
      ),
    );
  }
}
