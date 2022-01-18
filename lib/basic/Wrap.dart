import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        //制定阴影
        elevation: 0.0,
      ),
      body: const HelloFlutter(),
    );
  }
}

//继承无状态组件，该类是一个抽象类
class HelloFlutter extends StatelessWidget {
  const HelloFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget avatarAll =
        const CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀'));
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      alignment: WrapAlignment.spaceAround,
      children: [
        Chip(
          label: const Text("刘备"),
          avatar: avatarAll,
        ),
        Chip(
          label: const Text("关羽"),
          avatar: avatarAll,
        ),
        Chip(
          label: const Text("张飞"),
          avatar: avatarAll,
        ),
      ],
    );
  }
}
