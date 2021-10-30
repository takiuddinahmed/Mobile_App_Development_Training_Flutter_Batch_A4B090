import 'package:flutter/material.dart';

main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Home World",
      home: Scaffold(
        appBar: AppBar(title: Text("Home Work")),
        body: Center( 
          child: Column(children: [
            Text("Hello here are some image"),
            // Image.network("https://images.unsplash.com/photo-1631914290613-8cb35b201b39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=719&q=80"),
            Image.asset("assets/img.jpg", width: 400, height: 500,),
          ],)
         )
        )
    );
  }


}