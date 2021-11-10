import 'package:flutter/material.dart';
import 'package:list_view/user.dart';

class UserForm extends StatefulWidget {
  late var cancel;
  UserForm(this.cancel);

  @override
  _UserFormState createState() => _UserFormState(cancel);
}

class _UserFormState extends State<UserForm> {
  late var cancel;
  _UserFormState(this.cancel);

  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  String name = "";
  String contactNumber = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Mr. X",
                labelText: "Name"
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: contactController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "+880xx",
                labelText: "Contact Number"
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: ()=>{
                  cancel()
                }, 
                // style: ButtonStyle(backgroundColor: ),
                child: Text("Cancel")),
              ElevatedButton(
                onPressed: ()=>{
                  setState((){
                    name = nameController.text;
                    contactNumber = contactController.text;
                    User usr = User(name,contactNumber,"image.jfif");
                    users.add(usr);
                    nameController.clear();
                    contactController.clear();
                    cancel();
                  })
                }, 
                child: Text("Submit")),
            ],
          )
        ]
        
      ),
    );
  }
}