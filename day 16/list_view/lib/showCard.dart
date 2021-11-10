import 'package:flutter/material.dart';
import 'package:list_view/user.dart';

class UserCard extends StatelessWidget {

  List <Widget> _showUserList (){
    return users.map((u)=>_showUser(u)).toList();
  }

  Widget _showUser (User u){
    return Container(
      height: 150,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CircleAvatar(child: Image.asset("assets/${u.image}"),),
              SizedBox(height: 10,),
              Text(u.name),
              SizedBox(height: 5,),
              Text(u.contactNumber)
          ],),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Wrap(
        children: _showUserList(),),
    );
  }
}