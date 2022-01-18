import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Hello Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        RichText(
          text: const TextSpan(
            text: "Hello",
            style: TextStyle(
              fontSize: 40,
              color: Colors.red,
            ),
            children: [
              TextSpan(
                text: "Flutter",
                style: TextStyle(fontSize: 40, color: Colors.blue),
              ),
              TextSpan(
                text: "你好世界",
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
