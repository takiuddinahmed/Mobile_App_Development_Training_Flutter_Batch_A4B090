import 'package:flutter/material.dart';

main()=>runApp(MaterialApp(
  title: "state",
  home: Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 3;

  void _increment (){
    setState((){
      _count --;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
          appBar: AppBar(title: Text("State"),),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$_count", style: TextStyle(fontSize: 28),),
                ElevatedButton(
                  onPressed: ()=>{},
                  child: 
                      Icon(Icons.alarm),
                    
                ),
                IconButton( 
                  onPressed: ()=>{},
                  icon: Icon(Icons.notification_add, color: Colors.purple, size: 48),

                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.purple,
            child: Icon(Icons.add),
            onPressed: (){
              _increment();
            },
          ),
    );
  }
}