import 'package:flutter/material.dart';
main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "layout",
      home: Scaffold( 
        appBar: AppBar(title: Text("Layout"),),
        body: Home(),
      ),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 300,
          height: 200,
          color: Colors.purple
        ),
        SizedBox(height: 10,),
        Container(
          width: 200,
          height: 200,
          color: Colors.green,
        ),
        SizedBox(height: 10,),
        Container(
          width: 100,
          height: 200,
          color: Colors.blue,
        ),
      ],
      );
  }
}
