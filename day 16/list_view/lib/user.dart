import 'package:flutter/material.dart';

class User {
  String name = "";
  String contactNumber = "";
  String image = "";

  // User(String _name, String _contactNumber){
  //   name = _name;
  //   contactNumber = _contactNumber;
  // }
  User (this.name, this.contactNumber, this.image){}
}

List<User> users = [
  User("Mr. A", "+880100000001","image.jfif" ),
  User("Mr. B", "+880100000002","image.jfif"),
  User("Mr. C", "+880100000003","image.jfif"),
  User("Mr. D", "+880100000004","image.jfif"),
];