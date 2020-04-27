import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Colors.yellow),
      title: "fdsf",
      home: Home(title: "flutter 默认界面编写"),
    );
  }
}

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("敲击加号增加敲击次数"),
            new Text(
              "$_count",
              style: Theme.of(context).textTheme.display4,
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
