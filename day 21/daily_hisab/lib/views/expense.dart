import 'package:daily_hisab/component/viewTkText.dart';
import 'package:flutter/material.dart';


class ExpenseView extends StatefulWidget {
  int expense = 0;
  ExpenseView({this.expense = 0}){}
  @override
  _ExpenseViewState createState() => _ExpenseViewState(expense: expense);
}

class _ExpenseViewState extends State<ExpenseView> {
  int expense = 0;
  _ExpenseViewState({this.expense = 0}){}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ViewTkText(text: "Expense: $expense BDT",),
        ],
      )
    )
    );
  }
}