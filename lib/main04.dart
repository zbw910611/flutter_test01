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
      home: Tabs(),
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

class Tabs extends StatefulWidget{
  Tabs({Key key}) : super(key:key);
  _TabState createState() => _TabState();
}

class _TabState extends State<Tabs>{
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("flutter_test01"),
        ),
        body: HomeContent(),
        bottomNavigationBar:BottomNavigationBar(
            currentIndex: this._currentIndex,
            onTap: (int index){
              setState(() {
                this._currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("首页")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  title: Text("分类")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  title: Text("设置")),
            ])
    );
  }

}
