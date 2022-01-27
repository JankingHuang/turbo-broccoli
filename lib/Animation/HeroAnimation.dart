import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ImageDetail.dart';

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
      body: HeroAnimationDemo(),
    );
  }
}

class HeroAnimationDemo extends StatelessWidget {
  const HeroAnimationDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 50,
        children: List.generate(20, (index) {
          String imageURL = "https://picsum.photos/id/$index/300/400";
          return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext ctx) {
                  return ImageDetail(imageURL);
                }));
              },
              child: Hero(tag: imageURL, child: Image.network(imageURL)));
        }),
      ),
    );
  }
}
