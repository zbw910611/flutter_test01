import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//自定义组件
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "你好flutter1",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.blue
        ),
      ),
    );
  }
}