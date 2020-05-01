import 'package:flutter/material.dart';

class FormTest extends StatefulWidget {
  @override
  _FormTestState createState() => _FormTestState();
}

class _FormTestState extends State<FormTest> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("form测试"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey,
          autovalidate: true,
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                controller: _unameController,
                decoration: InputDecoration(
                  labelText: "用户名",
                  helperText: "不为空，且最多不超过10个字符",
                  hintText: "请输入用户名",
                  icon: Icon(Icons.person),
                ),
                validator: (v) {
                  return v.trim().length > 0 ? null : "用户名不能为空";
                },
              ),
              TextFormField(
                // autofocus: true,
                controller: _pwdController,
                decoration: InputDecoration(
                  labelText: "密码",
                  helperText: "最多不超过16个字符",
                  hintText: "请输入密码",
                  fillColor: Colors.red,
                  icon: Icon(Icons.vpn_key),
                ),
                obscureText: true,
                validator: (v) {
                  return v.trim().length > 5 ? null : "密码需要六位数以上字符";
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(10.0),
                        child: Text("login"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          if ((_formKey.currentState as FormState)
                              .validate()) {}
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
