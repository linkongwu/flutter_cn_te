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
      body: ListView(
        children: <Widget>[
          Image.asset(
            "assets/images/1.jpg",
            height: 50.0,
            width: 100.0,
          ),
          Image.asset(
            "assets/images/1.jpg",
            fit: BoxFit.values[0],
            height: 50.0,
            width: 100.0,
          ),
          Image.asset(
            "assets/images/1.jpg",
            fit: BoxFit.values[1],
            height: 50.0,
            width: 100.0,
          ),
          Image.asset(
            "assets/images/1.jpg",
            fit: BoxFit.values[2],
            height: 50.0,
            width: 100.0,
          ),
          Image.asset(
            "assets/images/1.jpg",
            fit: BoxFit.values[3],
            height: 50.0,
            width: 100.0,
          ),
          Image.asset(
            "assets/images/1.jpg",
            fit: BoxFit.values[4],
            height: 50.0,
            width: 100.0,
          ),
          Image.asset(
            "assets/images/1.jpg",
            fit: BoxFit.values[5],
            height: 50.0,
            width: 100.0,
          ),
          Image.asset(
            "assets/images/1.jpg",
            fit: BoxFit.values[6],
            height: 50.0,
            width: 100.0,
          ),
          Image.asset(
            "assets/images/1.jpg",
            height: 50.0,
            width: 100.0,
            color: Colors.blue,
            colorBlendMode: BlendMode.plus,
          ),
          Image.network(
            "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2534506313,1688529724&fm=26&gp=0.jpg",
            width: 100,
            height: 600,
            repeat: ImageRepeat.repeatY,
          )
        ],
      ),
    );
  }
}
