import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//自定义组件MyApp
//MaterialApp作为flutter的根组件使用
//Scaffold装饰app
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter_test011"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primaryColor: Colors.red
      ),
    );
  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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