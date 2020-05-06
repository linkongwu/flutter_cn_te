import 'package:flutter/material.dart';

class SingleViewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLIMDFAJKDLFAJSLFDFDKJSLSDFJ";
    return Scrollbar(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: str
              .split("")
              .map((e) => Text(
                    e,
                    textScaleFactor: 1.5,
                  ))
              .toList(),
        ),
      ),
    ));
  }
}
