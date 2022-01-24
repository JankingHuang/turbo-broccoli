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
      body: MyState(),
    );
  }
}

class MyState extends StatefulWidget {
  const MyState({Key? key}) : super(key: key);

  @override
  _MyStateState createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  int _num = 0;

  @override
  void initState() {
    super.initState();
    print('init State');
    _num = 1;
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant MyState oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dis');
  }

  void _increment() {
    setState(() {
      print('setState');
      _num++;
    });
  }

  void _decrement() {
    setState(() {
      print('setState');
      _num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _increment();
              },
              child: Icon(Icons.add),
            ),
            Text("$_num"),
            ElevatedButton(
              onPressed: () => _decrement(),
              child: Icon(Icons.ac_unit),
            ),
          ],
        ),
      ),
    );
  }
}
