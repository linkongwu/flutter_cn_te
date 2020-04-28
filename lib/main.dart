import 'package:flutter/material.dart';
import 'package:fluttercnte/src/home/home.dart';
import 'package:fluttercnte/src/route/new_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Colors.yellow),
      title: "demo",
      routes: {
        "new_page": (context) => NewRoute(),
        // "/": (context) => Home(title: "flutter 默认界面编写"),
      },
      home: Home(title: "flutter 默认界面编写"),
    );
  }
}
