import 'package:flutter/material.dart';

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is Title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('动态列表'),
        ),
        body: const HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      /// 水平方向的个数
      crossAxisCount: 3,
      children: const [
        Text('123456'),
        Text('123456'),
        Text('123456'),
        Text('123456'),
        Text('123456'),
        Text('123456'),
        Text('123456'),
        Text('123456'),
      ],
    );
  }
}
