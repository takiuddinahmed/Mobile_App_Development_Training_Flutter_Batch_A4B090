import 'package:flutter/material.dart';
import 'package:list_view/user.dart';

class UserCard extends StatelessWidget {

  Widget _showUser (int index){
    return Container(
      height: 150,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CircleAvatar(child: Image.asset("assets/${users[index].image}"),),
              SizedBox(height: 10,),
              Text(users[index].name),
              SizedBox(height: 5,),
              Text(users[index].contactNumber)
          ],),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        _showUser(0),
        _showUser(1),
        _showUser(2),
        _showUser(4),
        _showUser(3),
        _showUser(5),
        _showUser(6),
        _showUser(7),
        _showUser(8),
        _showUser(8),
        _showUser(8),
        _showUser(8),
        _showUser(8),
        _showUser(8),
        _showUser(8),
        _showUser(8),
        _showUser(8),
      ],);
  }
}