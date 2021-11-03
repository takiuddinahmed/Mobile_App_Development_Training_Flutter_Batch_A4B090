import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MCQ",
      home: Scaffold(
        appBar: AppBar(title: Text("MCQ"),),
        body: MCQ(),
       )
    );
  }
}

class MCQ extends StatefulWidget {


  @override
  _MCQState createState() => _MCQState();
}

class _MCQState extends State<MCQ> {
  int viewIndex = 0;
  bool visibility = false;
  
  var ques = [
    {"title":"What is the capital of Bangladesh?", "options":["Rajshahi","Joyputhat","Noakhali","Dhaka"], "correct":"Dhaka"},
    {"title":"What is the programming language of Flutter?", "options":["Java","C++","Dart","Python"], "correct":"Dart"},
    {"title":"What is flutter?", "options":["OS","Programming Language","Framework","Database"], "correct":"Framework"},
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Card(
           child: Padding(
             padding: const EdgeInsets.all(15.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(" ${viewIndex + 1} . ${ques[viewIndex]["title"].toString()}"),
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0, top: 10),
                   child: Text("a) ${(ques[viewIndex]["options"] as List)[0].toString()}"),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0, top: 10),
                   child: Text("b) ${(ques[viewIndex]["options"] as List)[1].toString()}"),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0, top: 10),
                   child: Text("c) ${(ques[viewIndex]["options"] as List)[2].toString()}"),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0, top: 10),
                   child: Text("d) ${(ques[viewIndex]["options"] as List)[3].toString()}"),
                 ),
                 visibility ? Padding(
                   padding: const EdgeInsets.only( top: 10),
                   child: Text("Correct Answer:  ${ques[viewIndex]["correct"].toString()}"),
                 ) : Text(""),
                 
               ],
             ),
           ),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            
             ElevatedButton(onPressed: ()=>{
               setState((){
                 if(viewIndex >0 ){
                  viewIndex --;
                  visibility = false;
                 }
               })
             }, child: Text("Back")),

             ElevatedButton(onPressed: ()=>{
               setState((){
                 visibility = !visibility;
               })
             }, child: Text(visibility ? "Hide" : "Show")),
             
             ElevatedButton(onPressed: ()=>{
               setState((){
                 if(viewIndex < ques.length - 1 ){
                  viewIndex ++;
                  visibility = false;
                 }
               })
             }, child: Text("Next")),

           ],
         )
       ],
     ), 
    );
  }
}

