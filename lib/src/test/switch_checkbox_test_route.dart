import 'package:flutter/material.dart';

final String a = "选中";
final String b = "未选中";

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  _SwitchAndCheckBoxTestRouteState createState() =>
      _SwitchAndCheckBoxTestRouteState();
}

class _SwitchAndCheckBoxTestRouteState
    extends State<SwitchAndCheckBoxTestRoute> {
  bool _switchSelected = true;
  bool _checkSelected = true;

  String k1 = a, k2 = a;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("swi check test page"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Switch(
                value: _switchSelected,
                onChanged: (value) {
                  setState(() {
                    _switchSelected = value;
                    k1 = value ? a : b;
                  });
                },
              ),
              Text("$k1")
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(
                value: _checkSelected,
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    _checkSelected = value;
                    k2 = value ? a : b;
                  });
                },
              ),
              Text("$k2")
            ],
          ),
        ],
      ),
    );
  }
}
