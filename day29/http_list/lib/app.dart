import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_list/model/user.dart';

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<User> userList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var url = Uri.https("reqres.in", "/api/users");
    var res = await http.get(url);
    print(res.body);
    var json = jsonDecode(res.body);
    // print(json["data"]);
    List userJsonList = json["data"];
    List<User> _userList = userJsonList.map((userJson) => User.fromJson(userJson)).toList();
    setState(() {
      userList = _userList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userList.length,
      itemBuilder: (context, index){
        return ListTile(
          title: Text("${userList[index].firstName} ${userList[index].lastName}"),
          subtitle: Text("Email: ${userList[index].email}"),
          leading: CircleAvatar(child: Image.network(userList[index].avatar),),
        );
      });
  }
}