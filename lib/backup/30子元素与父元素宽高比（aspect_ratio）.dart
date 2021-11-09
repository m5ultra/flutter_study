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
          title: const Text('Padding Row Column Expanded'),
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
    return Container(
      decoration:
          BoxDecoration(border: Border.all(width: 3, color: Colors.green)),
      width: 300,
      // 设置子元素 与 父元素宽高比
      child: AspectRatio(
        aspectRatio: 0.5,
        child: Container(color: Colors.cyan),
      ),
    );
  }
}
