import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.settings),
        ],
        title: Text("Stagger Animation"),
        leading: Icon(Icons.menu),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: AnimationDemo(),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({Key? key}) : super(key: key);

  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  late Animation sizeAnimation;
  late Animation colorAnimation;
  late Animation rotaionAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //创建AnimationControllor
    controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    //创建动画,并监听
    animation = CurvedAnimation(parent: controller, curve: Interval(0.0, 0.5))
      ..addListener(() {
        setState(() {});
      });

    //动画反复运行
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    //设置其他动画
    sizeAnimation = Tween(begin: 0.0, end: 200).animate(animation);
    colorAnimation = ColorTween(begin: Colors.yellow, end: Colors.red).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.8, 1.0, curve: Curves.bounceIn),
      ),
    );

    rotaionAnimation = Tween(begin: 0.0, end: 2 * pi).animate(
      CurvedAnimation(
          curve: Interval(0.8, 1.0, curve: Curves.easeIn), parent: controller),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              controller.forward();
            },
            child: Text("重复"),
          ),
          ElevatedButton(
            onPressed: () {
              controller.stop();
            },
            child: Text("停止"),
          ),
          Opacity(
            opacity: controller.value,
            child: Transform.rotate(
              angle: rotaionAnimation.value,
              child: Container(
                width: sizeAnimation.value,
                height: sizeAnimation.value,
                color: colorAnimation.value,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
}
