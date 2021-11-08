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
          title: const Text('水平列表'),
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
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.yellow,
            width: 80,
          ),
          Container(
            color: Colors.blue,
            width: 80,
          ),
          Container(
            color: Colors.red,
            width: 80,
            child: const Text(
              '8988',
              style: TextStyle(),
            ),
          ),
          Container(
            color: Colors.yellow,
            width: 80,
          ),
          Container(
            color: Colors.blue,
            width: 80,
          ),
          Container(
            color: Colors.red,
            width: 80,
            child: const Text(
              '8988',
              style: TextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}

/**
 * tips: 默认水平或者垂直方向填充
 * 可以用SizedBox 包裹
 */
