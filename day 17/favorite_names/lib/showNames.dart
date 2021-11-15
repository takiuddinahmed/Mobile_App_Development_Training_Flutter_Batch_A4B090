import 'package:favorite_names/name.dart';
import 'package:flutter/material.dart';

class ShowNames extends StatefulWidget {

  @override
  _ShowNamesState createState() => _ShowNamesState();
}

class _ShowNamesState extends State<ShowNames> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading: Text(names[index].id.toString()),
              title: Text(names[index].name),
              trailing: IconButton(
                onPressed: (){
                  setState(() {
                    names[index].toggleFavorite();
                  });
                },
                icon: Icon(
                  Icons.favorite, 
                  color: names[index].isFavorite ? 
                    Colors.redAccent : 
                    Colors.blueAccent,),
              ),
            ),
          );
        },
        )
    );
  }
}
