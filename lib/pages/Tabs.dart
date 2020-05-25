import 'package:flutter/material.dart';

import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget{
  Tabs({Key key}) : super(key:key);
  _TabState createState() => _TabState();
}

class _TabState extends State<Tabs>{
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CateGoryPage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("flutter_test01"),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar:BottomNavigationBar(
            currentIndex: this._currentIndex,//配置选中的索引值
            onTap: (int index){
              setState(() {//改变状态
                this._currentIndex = index;
              });
            },
            iconSize: 36.0,//icon的大小
            fixedColor: Colors.red,//icon的颜色
            type: BottomNavigationBarType.fixed,//配置可以显示多个按钮
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