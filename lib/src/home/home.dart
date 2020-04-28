import 'package:flutter/material.dart';
import 'package:fluttercnte/src/test/random_text.dart';
import 'package:fluttercnte/src/test/tapbox_a.dart';
import 'package:fluttercnte/src/test/tapbox_b.dart';
import '../route/new_route.dart';
import '../cuptino/cuption_route.dart';
import '../test/tapbox_c.dart';

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
            ),
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addcount,
        child: Icon(Icons.add),
      ),
    );
  }
}
