import 'package:flutter/material.dart';
import 'package:http_list/app.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HTTP LIST",
      home: Scaffold(
        appBar: AppBar(title: Text("Http List"),),
        body: App(),
      )
    );
  }
}
