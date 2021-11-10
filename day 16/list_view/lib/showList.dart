import 'package:flutter/material.dart';
import 'user.dart';

class ShowUserList extends StatelessWidget {
  const ShowUserList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context,index){
        return Card(
            child: Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text(users[index].name),
              subtitle: Text(users[index].contactNumber),
              trailing: Icon(Icons.phone),
              leading: CircleAvatar(
                child: Image.asset("assets/${users[index].image}"),),
            ),
        ),
    );
      });
  }
}