import 'package:flutter/material.dart';
import 'package:fluttercnte/src/test/button_test.dart';
import 'package:fluttercnte/src/test/form_test.dart';
import 'package:fluttercnte/src/test/icon_test.dart';
import 'package:fluttercnte/src/test/image_test.dart';
import 'package:fluttercnte/src/test/indicator_test.dart';
import 'package:fluttercnte/src/test/state_test.dart';
import 'package:fluttercnte/src/test/switch_checkbox_test_route.dart';
import 'package:fluttercnte/src/test/text_test.dart';
import 'package:fluttercnte/src/test/textfild_test.dart';

class HomeTestFirToSec extends StatefulWidget {
  @override
  _HomeTestFirToSecState createState() => _HomeTestFirToSecState();
}

class _HomeTestFirToSecState extends State<HomeTestFirToSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeTestFirToSec"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开文本测试页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return TextTestPage();
                      }));
            },
          ),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开路由测试页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return StateTest();
                      }));
            },
          ),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开button测试页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return ButtonTest();
                      }));
            },
          ),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开Image测试页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return ImageTest();
                      }));
            },
          ),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开icons测试页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return IconsTest();
                      }));
            },
          ),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开switch checkbox测试页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return SwitchAndCheckBoxTestRoute();
                      }));
            },
          ),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开textfile测试页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return TextfildTest();
                      }));
            },
          ),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开form测试页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return FormTest();
                      }));
            },
          ),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开indicator测试页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return IndicatorTest();
                      }));
            },
          ),
          ProgressRoute(),
        ],
      ),
    );
  }
}
