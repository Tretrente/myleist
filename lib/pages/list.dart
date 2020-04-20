import 'package:flutter/material.dart';
class ListCreation {
  List<Widget> todo = [];
  Card listBuiler(String listName) {
    return Card(
      color: Colors.grey,
      elevation: 5.00,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: FlatButton(
        onPressed: (){
          //TODO add the navigation to a new page with the list name
        },
        child: Container(
            child: ListTile(
              title: Text(
                "$listName",
              ),
            )
        ),
      ),
    );
  }
}