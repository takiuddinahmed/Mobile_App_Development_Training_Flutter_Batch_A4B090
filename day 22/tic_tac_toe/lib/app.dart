import 'package:flutter/material.dart';
import 'package:tic_tac_toe/component/eachBox.dart';

class GameApp extends StatefulWidget {
  const GameApp({ Key? key }) : super(key: key);

  @override
  _GameAppState createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  List<String> data = ["","","","","","","","",""];

  String selectedPlayer = "X";

  userClick(int index){

    if(data[index] == ""){
      setState(() {
        data[index] = selectedPlayer;
      });
      selectedPlayer = selectedPlayer == "X" ? "O" : "X";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Table(
        border: TableBorder.all(),
        children: [
          TableRow(
            children: [
              EachBox(text: data[0],index: 0, userClick: userClick,),
              EachBox(text: data[1],index: 1, userClick: userClick,),
              EachBox(text: data[2],index: 2, userClick: userClick,),
            ]
          ),
          TableRow(
            children: [
              EachBox(text: data[3],index: 3, userClick: userClick,),
              EachBox(text: data[4],index: 4, userClick: userClick,),
              EachBox(text: data[5],index: 5, userClick: userClick,),
            ]
          ),
          TableRow(
            children: [
              EachBox(text: data[6],index: 6, userClick: userClick,),
              EachBox(text: data[7],index: 7, userClick: userClick,),
              EachBox(text: data[8],index: 8, userClick: userClick,),
            ]
          ),
        ],
      )
    );
  }
}