import 'package:flutter/material.dart';

const textStyle = const TextStyle(fontFamily: 'Raleway');
var buttonText = const Text(
  "use the font for this text",
  style: textStyle,
);

class TextTestPage extends StatefulWidget {
  @override
  _TextTestPageState createState() => _TextTestPageState();
}

class _TextTestPageState extends State<TextTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本测试"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "HELLO WORLD!",
                textAlign: TextAlign.left,
              ),
              Text(
                "HELLO WORLD!" * 6,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "HELLO WORLD!" * 6,
                textAlign: TextAlign.center,
              ),
              Text(
                "HELLO WORLD!",
                textScaleFactor: 1.5,
              ),
              Text(
                "HELLO WORLD!",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  fontFamily: "courier",
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                  background: new Paint()..color = Colors.yellow,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: "home"),
                  TextSpan(
                    text: "http://git/flutter_cn_te",
                    style: TextStyle(color: Colors.blue),
                    // recognizer: ConnectionState.active//手势识别
                  ),
                ]),
              ),
              DefaultTextStyle(
                style: TextStyle(color: Colors.red, fontSize: 20.0),
                textAlign: TextAlign.start,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("defalt text"),
                    Text("I am an A"),
                    Text(
                      "I am a K",
                      style: TextStyle(inherit: false, color: Colors.grey),
                    ),
                    buttonText,
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
