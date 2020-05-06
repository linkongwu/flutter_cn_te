import 'package:flutter/material.dart';

class ScaffoldTest extends StatefulWidget {
  @override
  _ScaffoldTestState createState() => _ScaffoldTestState();
}

class _ScaffoldTestState extends State<ScaffoldTest>
    with SingleTickerProviderStateMixin {
  int _selectIndex = 1;

  List tabs = ["news", "history", "photo"];
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    // 创建Controllerx
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  void _onItemTapped(index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scaffold Test"),
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      drawer: new MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        fixedColor: Colors.yellow,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("HOME"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("BUSINESS"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("SCHOOL"),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              e,
              textScaleFactor: 2.0,
            ),
          );
        }).toList(),
      ),
    );
  }
}

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          currentAccountPicture: ClipOval(
            child: Image.asset(
              "assets/images/1.jpg",
              fit: BoxFit.fill,
            ),
          ),
          accountName: Text("photo_1"),
          accountEmail: Text("456456@qq.com"),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.supervised_user_circle),
                title: Text("user"),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: Text("settings"),
              )
            ],
          ),
        )
      ],
    ));
  }
}
