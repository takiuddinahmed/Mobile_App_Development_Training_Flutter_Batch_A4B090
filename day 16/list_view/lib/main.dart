import 'package:flutter/material.dart';
import 'package:list_view/form.dart';
import 'package:list_view/showCard.dart';
import 'showList.dart';

main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String view = "page";

  changeToPage(){
    setState(() {
      view = "page";
    });
  }

  Widget _show(){
    if(view == "add"){
      return UserForm(changeToPage);
    }
    return PageView(
            children: [
              ShowUserList(),
              UserCard()
            ],
          );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle),
          title: Text("User Contact"),
          ),
          body: _show(),
        // body: ShowUserList()
        // body: UserCard()
        // body: UserForm(),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=>{
            setState((){
              view = "add";
            })
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}