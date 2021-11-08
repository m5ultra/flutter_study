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
      color: Colors.black38,
      height: 800,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: IconBtn(
              Icons.account_circle,
              color: Colors.cyan,
              size: 28.0,
            ),
            flex: 1,
          ),
          Expanded(
              child: IconBtn(
                Icons.home,
                color: Colors.red,
                size: 28.0,
              ),
              flex: 2),
          Expanded(
              child: IconBtn(
                Icons.search,
                color: Colors.cyan,
                size: 28.0,
              ),
              flex: 1)
        ],
      ),
    );
  }
}

/// 自定义IconBtn组建
class IconBtn extends StatelessWidget {
  double size;
  Color color;
  IconData icon;

  IconBtn(this.icon, {Key? key, this.color = Colors.red, this.size = 32.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      child: Icon(icon, size: size, color: Colors.white),
    );
  }
}
