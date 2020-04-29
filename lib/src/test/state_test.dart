import 'package:flutter/material.dart';
import 'package:fluttercnte/src/test/random_text.dart';
import 'package:fluttercnte/src/test/tapbox_a.dart';
import 'package:fluttercnte/src/test/tapbox_b.dart';
import 'package:fluttercnte/src/route/new_route.dart';
import 'package:fluttercnte/src/cuptino/cuption_route.dart';
import 'package:fluttercnte/src/test/tapbox_c.dart';

class StateTest extends StatefulWidget {
  @override
  _StateTestState createState() => _StateTestState();
}

class _StateTestState extends State<StateTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开新页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return RouterTestRoute();
                      }));
            },
          ),
          RandomWordsWight(),
          CuptinoTestRoute(),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开CuptinoTestRoute页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return CuptinoTestRoute();
                      }));
            },
          ),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开TapboxA页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return TapboxA();
                      }));
            },
          ),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开TapboxB页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return ParentWidget();
                      }));
            },
          ),
          FlatButton(
            textColor: Colors.brown,
            child: Text(
              "打开TapboxC页面",
              style: TextStyle(fontSize: 16.6),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      maintainState: false,
                      builder: (context) {
                        return ParentWidgetC();
                      }));
            },
          ),
        ],
      ),
    );
  }
}
