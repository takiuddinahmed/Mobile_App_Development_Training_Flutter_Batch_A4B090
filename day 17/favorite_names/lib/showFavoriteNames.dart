import 'package:favorite_names/name.dart';
import 'package:flutter/material.dart';

class ShowFavoriteNames extends StatefulWidget {

  @override
  _ShowFavoriteNamesState createState() => _ShowFavoriteNamesState();
}

class _ShowFavoriteNamesState extends State<ShowFavoriteNames> {
  List <Name> favoriteNames = names.where((element) => element.isFavorite).toList();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: favoriteNames.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading: Text(favoriteNames[index].id.toString()),
              title: Text(favoriteNames[index].name),
              
            ),
          );
        },
        )
    );
  }
}
