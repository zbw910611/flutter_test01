import 'package:flutter/material.dart';
import 'pages/Tabs.dart';

void main() => runApp(MyApp());

//自定义组件MyApp
//MaterialApp作为flutter的根组件使用
//Scaffold装饰app
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData(
        primaryColor: Colors.red
      ),
    );
  }
}





