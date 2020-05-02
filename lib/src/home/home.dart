import 'package:flutter/material.dart';
import 'package:fluttercnte/src/home/home1_3.dart';
import 'package:fluttercnte/src/test/scaffold_test.dart';

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
                  child: Text("home1-3test"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeTestFirToSec();
                    }));
                  },
                ),
                FlatButton(
                  child: Text("ScaffoldTest"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ScaffoldTest();
                    }));
                  },
                )
              ],
            ),
            Column(
              children: <Widget>[
                
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
