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
        title: const Text("Text"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
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
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  get child => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //创建AnimationConroller
    controller = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    //申明动画曲线
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);

    //设置动画值的范围
    animation = Tween(begin: 50.0, end: 400.0).animate(controller);

    //监听动画
    animation.addListener(() {
      print(animation.value);
      setState(() {});
    });

    //执行动画
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //释放动画资源
    controller.dispose();
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
            child: Text("放大"),
          ),
          ElevatedButton(
              onPressed: () {
                controller.reverse();
              },
              child: Text("缩小")),
          ElevatedButton(
            onPressed: () {
              animation.addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  controller.reverse();
                } else {
                  controller.forward();
                }
              });
              controller.forward();
            },
            child: Text("重复"),
          ),
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: animation.value,
          ),
          Opacity(
            opacity: controller.value,
            child: Text("Hello world"),
          ),
        ],
      ),
    );
  }
}
