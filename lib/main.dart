import 'package:firstflutterapp/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:firstflutterapp/pages/list_page.dart';

void main() => runApp(MaterialApp(
  routes: {
        '/': (context) => Home(),
        '/listpage': (context) => ListPage(),
  },
    ));
