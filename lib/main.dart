import 'package:flutter/material.dart';
import 'package:turbo_broccoli/state/lifecycle.dart';

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
