import 'package:daily_hisab/component/viewTkText.dart';
import 'package:flutter/material.dart';


class DashboardView extends StatefulWidget {
  int income = 0;
  int expense = 0;
  DashboardView({this.income = 0, this.expense = 0}){}

  @override
  _DashboardViewState createState() => _DashboardViewState(income: income, expense: expense);
}

class _DashboardViewState extends State<DashboardView> {
  int income = 0;
  int expense = 0;
  _DashboardViewState({this.income = 0, this.expense = 0}){}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ViewTkText(text: "Total: ${income - expense} BDT",),
          ViewTkText(text: "Income: $income BDT",),
          ViewTkText(text: "Expense: $expense BDT",),
        ],
      ),
    );
  }
}
