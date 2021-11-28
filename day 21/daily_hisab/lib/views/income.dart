import 'package:daily_hisab/component/viewTkText.dart';
import 'package:flutter/material.dart';


class IncomeView extends StatefulWidget {
  int income = 0;
  IncomeView({this.income = 0}){}
  @override
  _IncomeViewState createState() => _IncomeViewState(income: income);
}

class _IncomeViewState extends State<IncomeView> {
  int income = 0;
  _IncomeViewState({this.income = 0}){}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ViewTkText(text: "Income: $income BDT",),
          // TextField(

          // )
        ],
      )
    )
    );
  }
}