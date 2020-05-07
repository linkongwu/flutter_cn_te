import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网格页面"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0
        ),
        children: <Widget>[
          Icon(Icons.arrow_back),
          Icon(Icons.face),
          Icon(Icons.games),
          Icon(Icons.fast_forward),
          Icon(Icons.query_builder),
          Icon(Icons.featured_play_list),
        ],
      ),
    );
  }
}
