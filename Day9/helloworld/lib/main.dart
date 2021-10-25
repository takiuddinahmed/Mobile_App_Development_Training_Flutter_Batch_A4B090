import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(title: Text("Hello World")),
        body: Center(child: Text("Hello world", style: TextStyle(fontSize: 36, color: Colors.blueAccent),),)
      )
    )
  );
}