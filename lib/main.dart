import 'package:flutter/material.dart';

import 'basic/Wrap.dart';

// import 'basic/Flex.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Home(),
    );
  }
}
