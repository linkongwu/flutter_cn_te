import 'package:flutter/material.dart';
import 'package:fluttercnte/src/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Colors.yellow),
      title: "fdsf",
      home: Home(title: "flutter 默认界面编写"),
    );
  }
}
