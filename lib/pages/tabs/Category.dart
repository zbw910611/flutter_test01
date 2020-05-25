import 'package:flutter/material.dart';

class CateGoryPage extends StatefulWidget{
  CateGoryPage({Key key}) : super(key:key);
  _CateGoryPageState createState() => _CateGoryPageState();
}

class _CateGoryPageState extends State<CateGoryPage>{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("文本1"),
        ),
        ListTile(
          title: Text("文本2"),
        ),
        ListTile(
          title: Text("文本3"),
        ),
      ],
    );
  }
}