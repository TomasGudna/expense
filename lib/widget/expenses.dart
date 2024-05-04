import 'package:expense/models/expense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses ({super.key});


  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses>  {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Flutter",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.food
    ),
    Expense(
        title: "Cinema",
        amount: 25.99,
        date: DateTime.now(),
        category: Category.leisure
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(context: context, builder: )
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children:  [
          const Text("chart"),
          Expanded(
              child: ExpensesList(expenses: _registeredExpenses),
            ),
          ],
        ),
      );
  }
}