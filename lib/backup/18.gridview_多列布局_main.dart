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

  List<Widget> getList() {
    List<Widget> list = [];
    for (var i = 0; i < 20; i++) {
      list.add(Container(
          alignment: Alignment.center,
          height: 400, // 设置高度无效
          color: Colors.blue,
          child: Text(
            '这是第$i行数据',
            style: const TextStyle(color: Colors.red, fontSize: 16),
          )));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      /// 水平方向的个数
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 8,
      padding: const EdgeInsets.fromLTRB(10, 8, 10, 20),
      childAspectRatio: 1.0,
      children: getList(),
    );
  }
}
