import 'package:flutter/material.dart';
import 'package:fluttercnte/src/test/button_test.dart';
import 'package:fluttercnte/src/test/icon_test.dart';
import 'package:fluttercnte/src/test/image_test.dart';
import 'package:fluttercnte/src/test/state_test.dart';
import 'package:fluttercnte/src/test/switch_checkbox_test_route.dart';
import 'package:fluttercnte/src/test/text_test.dart';
import 'package:fluttercnte/src/test/textfild_test.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;

  void _addcount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                new Text("敲击加号增加敲击次数"),
                new Text(
                  "$_count",
                  style: Theme.of(context).textTheme.display4,
                ),
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
              ],
            ),
            Column(
              children: <Widget>[
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
                    "打开textfile form测试页面",
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
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addcount,
        child: Icon(Icons.add),
      ),
    );
  }
}
