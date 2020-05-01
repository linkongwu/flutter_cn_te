import 'package:flutter/material.dart';

class IndicatorTest extends StatefulWidget {
  @override
  _IndicatorTestState createState() => _IndicatorTestState();
}

class _IndicatorTestState extends State<IndicatorTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("进度条 test"),
      ),
      body: Column(
        children: <Widget>[
          LinearProgressIndicator(
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation(Colors.blue[200]),
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation(Colors.blue[200]),
            value: .5,
          ),
          // 模糊进度条(会执行一个旋转动画)
          CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
          ),
          //进度条显示50%，会显示一个半圆
          CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value: .5,
          ),
        ],
      ),
    );
  }
}

// class ProgressRoute extends StatefulWidget {
//   @override
//   _ProgressRouteState createState() => _ProgressRouteState();
// }

// class _ProgressRouteState extends State<ProgressRoute>
//     with SingleTickerProviderStateMixin {
//   AnimationController _animationController;

//   @override
//   void initState() {
//     _animationController =
//         new AnimationController(vsync: this, duration: Duration(seconds: 3));
//     _animationController.forward();
//     _animationController.addListener(() => setState(() => {}));
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: LinearProgressIndicator(
//               backgroundColor: Colors.grey[200],
//               valueColor: ColorTween(begin: Colors.grey, end: Colors.blue)
//                   .animate(_animationController),
//               value: _animationController.value,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class ProgressRoute extends StatefulWidget {
  @override
  _ProgressRouteState createState() => _ProgressRouteState();
}

class _ProgressRouteState extends State<ProgressRoute>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    //动画执行时间3秒  
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(() => setState(() => {}));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
            Padding(
            padding: EdgeInsets.all(16.0),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: ColorTween(begin: Colors.grey, end: Colors.blue)
                .animate(_animationController), // 从灰色变成蓝色
              value: _animationController.value,
            ),
          ),
        ],
      ),
    );
  }
}
