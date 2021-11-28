import 'package:flutter/material.dart';
import 'package:daily_hisab/app.dart';

main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Hisab',
      home: MyApp(),
    );
  }
}