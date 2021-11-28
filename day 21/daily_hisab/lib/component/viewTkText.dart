
import 'package:flutter/material.dart';

class ViewTkText extends StatelessWidget {
  String text = "";

  ViewTkText({required this.text }){}

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("$text", style: TextStyle(fontSize: 22),),
      ),
    );
  }
}
