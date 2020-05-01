import 'package:flutter/material.dart';

class TextfildTest extends StatefulWidget {
  @override
  _TextfildTestState createState() => _TextfildTestState();
}

class _TextfildTestState extends State<TextfildTest> {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _selectionController = TextEditingController();

  // @override
  // void initState() {
  //   _unameController.addListener(() {
  //     print(_unameController.text);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    _selectionController.text = "hello world";
    _selectionController.selection = TextSelection(
        extentOffset: _selectionController.text.length, baseOffset: 2);
    FocusNode focusNode1 = new FocusNode();
    FocusNode focusNode2 = new FocusNode();
    return Scaffold(
      appBar: AppBar(
        title: Text("fff"),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 8.0),
        children: <Widget>[
          Theme(
            data: Theme.of(context).copyWith(
                hintColor: Colors.green[200],
                inputDecorationTheme: InputDecorationTheme(
                    labelStyle: TextStyle(color: Colors.green),
                    hintStyle: TextStyle(color: Colors.green, fontSize: 16.6))),
            child: Column(
              children: <Widget>[
                TextField(
                  autofocus: true,
                  focusNode: focusNode1,
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      helperText: "最多不超过10个字符",
                      hintText: "请输入用户名",
                      fillColor: Colors.red,
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red))),
                  onChanged: (v) {
                    print("onChange: $v");
                  },
                ),
                TextField(
                  // autofocus: true,
                  focusNode: focusNode2,
                  decoration: InputDecoration(
                      labelText: "密码",
                      helperText: "最多不超过16个字符",
                      hintText: "请输入密码",
                      fillColor: Colors.red,
                      icon: Icon(Icons.vpn_key),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                  obscureText: true,
                ),
                TextField(
                  controller: _selectionController,
                ),
                Builder(
                  builder: (context) {
                    return Column(
                      children: <Widget>[
                        RaisedButton(
                          child: Text("移动焦点"),
                          onPressed: () {
                            //将焦点从第一个TextField移到第二个TextField
                            FocusScope.of(context).requestFocus(focusNode2);
                            // 这是第二种写法
                            // if (null == focusScopeNode) {
                            //   focusScopeNode = FocusScope.of(context);
                            // }
                            // focusScopeNode.requestFocus(focusNode2);
                          },
                        ),
                        RaisedButton(
                          child: Text("隐藏键盘"),
                          onPressed: () {
                            // 当所有编辑框都失去焦点时键盘就会收起
                            focusNode1.unfocus();
                            focusNode2.unfocus();
                          },
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
