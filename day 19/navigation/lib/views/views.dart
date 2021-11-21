import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page'),
    );
  }
}

class ContactPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Contact Page'),
    );
  }
}

class MessagePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Message Page'),
    );
  }
}

