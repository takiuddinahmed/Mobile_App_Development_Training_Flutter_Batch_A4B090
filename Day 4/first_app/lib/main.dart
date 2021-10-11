import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("First program")),
      body: Center(
        child: Text("Hello world", style: TextStyle(fontSize: 36,color:Colors.purple),)
        ,)
     )
  ));
}