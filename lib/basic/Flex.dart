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
      body: FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            //Container 必须制定宽度，默认为零
            Container(
              color: Colors.lightGreen,
              height: 50,
              width: 50,
            ),
            //自动伸缩
            Expanded(
              child: Container(
                color: Colors.lightBlue,
                height: 50,
              ),
            ),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          //加入空格环绕效果
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //声明水平方向的排列方式
          textDirection: TextDirection.rtl,
          children: const [
            Icon(
              Icons.access_alarm,
              size: 50,
            ),
            Icon(
              Icons.accessible_forward_rounded,
              size: 50,
            ),
            Icon(
              Icons.settings,
              size: 50,
            ),
            Icon(
              Icons.add_box,
              size: 50,
            ),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                height: 50,
                width: 50,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
        Container(
          height: 100,
          margin: EdgeInsets.all(50),
          child: Flex(
            direction: Axis.vertical,
            verticalDirection: VerticalDirection.up,
            children: [
              Expanded(
                child: Container(
                  color: Colors.tealAccent,
                  height: 50,
                ),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  color: Colors.amberAccent,
                  height: 50,
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
