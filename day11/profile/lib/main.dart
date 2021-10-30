import 'package:flutter/material.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile",
      home: Scaffold(
        appBar: AppBar(title: Text("Profile"),),
        body: Profile() 
      )
    );
  }
}
class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      // width: 300,
      // height: 400,
      margin: EdgeInsets.all(50),
      // margin: EdgeInsets.fromLTRB(10,20,30,40),
      // margin: EdgeInsets.only(left:20,right: 40),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Profile", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            Image.network(
              "https://images.unsplash.com/photo-1606412780208-44a709c49e1b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80",
              width: 100,
              height: 100,
              ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Name"),
                Text(":"),
                Text("Jorina")
              ],
             ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                Text("Age"),
                Text(":"),
                Text("80 year")
              ],
             ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Nationality"),
                Text(":"),
                Text("Wadiya")
              ],
             ),

             Container(
               color: Colors.blue,
               padding: EdgeInsets.all(20),
               child: Text("Padding Test")
               )
            
          ],
        ),
      ),
    );
  }
}