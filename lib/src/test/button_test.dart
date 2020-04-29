import 'package:flutter/material.dart';

class ButtonTest extends StatefulWidget {
  @override
  _ButtonTestState createState() => _ButtonTestState();
}

class _ButtonTestState extends State<ButtonTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("button test page"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("RaisedButton normal 默认自带水波纹效果"),
            onPressed: () {},
          ),
          FlatButton(
            child: Text("FlatButton norml clicked add bgcolor"),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.thumb_up),
          )
        ],
      ),
    );
  }
}
