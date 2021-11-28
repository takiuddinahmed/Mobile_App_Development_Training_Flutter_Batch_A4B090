
import 'package:daily_hisab/views/dashboard.dart';
import 'package:daily_hisab/views/expense.dart';
import 'package:daily_hisab/views/income.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _viewIndex = 0;

  int income = 300;
  int expense = 200;

 

  @override
  Widget build(BuildContext context) {
    var views = [
      DashboardView(income: income, expense: expense,),
      IncomeView(income: income,),
      ExpenseView(expense: expense,)
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Hisab'),
      ),
      body: views[_viewIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text("Dashboard"),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            title: Text("Income")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            title: Text("Expense")
          ),
        ],
        currentIndex: _viewIndex,
        onTap: (int index){
          setState(() {
            _viewIndex = index;
          });
        },
      ) ,
    );
  }
}