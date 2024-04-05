import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses-list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expense,
    required this.removeExpense,
  });

  final List<Expense> expense;
  final void Function(Expense expense) removeExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expense.length,
      itemBuilder: (ctx, index) => Dismissible(
        onDismissed: (direction) => removeExpense(expense[index]),
        key: ValueKey(expense[index]),
        child: ExpenseItem(expense[index]),
      ),
    );
  }
}
