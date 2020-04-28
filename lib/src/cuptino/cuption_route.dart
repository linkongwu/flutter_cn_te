import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuptinoTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("测试"),
        ),
        child: Center(
          child: CupertinoButton(
            color: CupertinoColors.systemYellow,
            child: Text("cuptino测试"), 
            onPressed: () {},
          ),
        ));
  }
}
