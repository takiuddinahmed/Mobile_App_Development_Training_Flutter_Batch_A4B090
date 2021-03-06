import 'package:flutter/material.dart';
import 'package:list_view/showCard.dart';
import 'showList.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle),
          title: Text("User Contact"),
          ),
          body: PageView(
            children: [
              ShowUserList(),
              UserCard()
            ],
          )
        // body: ShowUserList()
        // body: UserCard()
      ),
    );
  }
}