import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tic_tac_toe/component/eachBox.dart';
import 'package:tic_tac_toe/sharedPrefService.dart';

class GameApp extends StatefulWidget {
  const GameApp({ Key? key }) : super(key: key);

  @override
  _GameAppState createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  late Future<SharedPreferences> pref = SharedPreferences.getInstance();

  List<String> data = ["","","","","","","","",""];

  String selectedPlayer = "X";
  Widget winnerText =  SizedBox(height: 100,);
  bool endGame = false;
  int playerXWinCounter = 0;
  int playerOWinCounter = 0;
  int matchDrawCounter = 0;

  userClick(int index){

    if(data[index] == "" && endGame == false){
      setState(() {
        data[index] = selectedPlayer;
      });
      selectedPlayer = selectedPlayer == "X" ? "O" : "X";
      checkWin();
    }
  }

  String checkEach(int i,int j, int k){
    String winner = "";
    if(data[i] != ""){
      if( data[i] == data[j] && data[i] == data[k]){
        winner = data[i];
      }
    }
    return winner;
  }

  Widget gameEndWidget(String text){
    return Container(
            margin: EdgeInsets.all(20),
            height: 60,
            child: Row(
              children : [
                Text(text, style: TextStyle(color: Colors.redAccent, fontSize: 35,)),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: ()=>{
                  setState(() {
                    data = ["","","","","","","","",""];
                    selectedPlayer = "X";
                    winnerText =  SizedBox(height: 100,);
                    endGame=false;
                  })
                }, child: Text("Reset"))
                ]
            ),
          );
  }

  checkWin(){
    var l = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6],
    ];
    String winner = "";
    for(var indexes in l){
      winner = checkEach(indexes[0], indexes[1], indexes[2]);
      if(winner != ""){
        updateWinCounter(winner);
        setState(() {
          endGame = true;
          winnerText = gameEndWidget("The winner is $winner");
        });
        break;
      }
      else {
        if(!data.contains("")){
          updateWinCounter("D");
          setState(() {
            endGame = true;
            winnerText = gameEndWidget("Match Draw!!");
          
          });
          break;
        }
      }
    }
  }

  // List<Widget> getRow(){
  //   List list = List.filled(3, []);
  //   int l=0;
  //   for (int i = 0;i<9;i++){
  //     list[l].add(EachBox(text: data[i],index: i,userClick: userClick,));
  //     if(i+1 % 3==0){
  //       l++;
  //     }
  //   }
  //   List finalList = list.map((w) => TableRow(children: w)).toList();
  //   return (finalList as Widget);
  // }

  void updateWinCounter(String winner)async {
    switch (winner){
      case "X":
        playerXWinCounter ++;
        SharedPrefService.setValue(SharedPrefService.playerXKey, playerXWinCounter);
        setState(() {
          playerXWinCounter;
        });
        break;
      
      case "O":
        playerOWinCounter ++;
        SharedPrefService.setValue(SharedPrefService.playerOKey, playerOWinCounter);
        setState(() {
          playerOWinCounter;
        });
        break;
      
      case "D":
        matchDrawCounter ++;
        SharedPrefService.setValue(SharedPrefService.playerDrawKey, matchDrawCounter);
        setState(() {
          matchDrawCounter;
        });
        break;
      
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // playerXWinCounter = 0;
    // playerOWinCounter = 0;
    // matchDrawCounter = 0;
    // pref.then((_pref) => _pref.getInt("player_x") ?? 0);
    // pref.then((_pref) => _pref.getInt("player_o")?? 0);
    // pref.then((_pref) => _pref.getInt("player_draw") ?? 0);
    loadData();
  }

  loadData() async {
    int x = await SharedPrefService.getValue(SharedPrefService.playerXKey) ?? 0;
    int o = await SharedPrefService.getValue(SharedPrefService.playerOKey) ?? 0;
    int draw = await SharedPrefService.getValue(SharedPrefService.playerDrawKey) ?? 0;
    setState(() {
      playerXWinCounter = x;  
      playerOWinCounter = o;  
      matchDrawCounter = draw;  
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Player X"),
                  Text("$playerXWinCounter")
                ],
              ),
              Column(
                children: [
                  Text("Match Draw"),
                  Text("$matchDrawCounter")
                ],
              ),
              Column(
                children: [
                  Text("Player O"),
                  Text("$playerOWinCounter")
                ],
              ),
            ],
           ),
        ),
        winnerText,
        Table(
        border: TableBorder.all(),
        // children: getRow(),
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
      )]
    );
  }
}