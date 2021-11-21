import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'revise',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('Revise App'),
        ),
        body: HomePage()
      )
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Homepage");
  }
}


