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

  _handleGetDat() {
    List<Widget> data = [];
    for (var i = 0; i < 20; i++) {
      String c = i < 10 ? "0" + i.toString() : i.toString();
      data.add(ListTile(
        title: Text('这是第$c行数据！！！'),
      ));
    }
    return data.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: _handleGetDat());
  }
}
