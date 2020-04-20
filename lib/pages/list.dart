import 'package:flutter/material.dart';
import 'package:firstflutterapp/pages/home.dart';

class ListCreation {
  List<Widget> todo = [];

  Widget listBuiler(String listName) {
    return Card(
      color: Colors.grey,
      elevation: 5.00,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Container(
          child: ListTile(
            title: Text(
              "$listName",
            ),
          )
      ),
    );
  }
}