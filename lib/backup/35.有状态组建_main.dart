import 'package:flutter/material.dart';

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去处debug角标
      title: 'This is Title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('有状态组建'),
        ),
        body: const HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);
  @override
  _HomeContentState createState() => _HomeContentState();
}

// 实现有状态组建
class _HomeContentState extends State<HomeContent> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Chip(label: Text('$countNum')),
        RaisedButton(
          onPressed: () {
            setState(() {
              countNum++;
            });
          },
          child: const Text('Click me!'),
        )
      ],
    );
  }
}
