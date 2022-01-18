import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
        ],
        //制定阴影
        elevation: 0.0,
      ),
      body: HelloFlutter(),
    );
  }
}

//继承无状态组件，该类是一个抽象类
class HelloFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Hello World",
        textDirection: TextDirection.ltr,
      )),
    );
  }
}
