import 'package:flutter/material.dart';

class ImageTest extends StatefulWidget {
  @override
  _ImageTestState createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image test page"),
      ),
      body: Column(
        children: <Widget>[
          Image(image: AssetImage("lib\src\images\1.jpg"),)
        ],
      ),
    );
  }
}
