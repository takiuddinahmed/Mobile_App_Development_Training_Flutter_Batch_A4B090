import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: Scaffold(
        appBar: AppBar(title: Text("First App"),),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                    Text("Hello world"),
                    Image.asset("assets/download.jfif"),
                ],
              ),
              Image.asset("assets/images.png"),
              Image.asset("assets/download.jfif"),
              
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_WB-gELr4hH1171O6NCQL1IHnwkViFFjqJA8pbkQMyHcTUEDljCzlGGHdE1dTmeQcvHw&usqp=CAU'),
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_WB-gELr4hH1171O6NCQL1IHnwkViFFjqJA8pbkQMyHcTUEDljCzlGGHdE1dTmeQcvHw&usqp=CAU'),
             
            ],
            )
          ),
      )
    );
  }

}


