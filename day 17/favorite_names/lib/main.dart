import 'package:favorite_names/showFavoriteNames.dart';
import 'package:favorite_names/showNames.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Favorite Names'),
          leading: Icon(Icons.favorite),
        ),
        body: PageView(children: [
          ShowNames(),
          ShowFavoriteNames()]),
      )
    );  
  }
}