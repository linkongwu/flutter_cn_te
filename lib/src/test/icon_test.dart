import 'package:flutter/material.dart';

class IconsTest extends StatefulWidget {
  @override
  _IconsTestState createState() => _IconsTestState();
}

class _IconsTestState extends State<IconsTest> {
  String icons = "";

  @override
  Widget build(BuildContext context) {
    icons += "\uE914";
    icons += "\uE000";
    icons += "\uE90D";
    return Scaffold(
      appBar: AppBar(
        title: Text("Icons test"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            icons,
            style: TextStyle(
                fontFamily: "MaterialIcons",
                fontSize: 24.0,
                color: Colors.green),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.access_alarm,
                color: Colors.green,
              ),
              Icon(
                Icons.fast_forward,
                color: Colors.green,
              ),
              Icon(
                Icons.fiber_pin,
                color: Colors.green,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                IconData(0xe61d,
                    fontFamily: 'MyIconfont', matchTextDirection: true),
                color: Colors.blue,
              )
            ],
          )
        ],
      ),
    );
  }
}
