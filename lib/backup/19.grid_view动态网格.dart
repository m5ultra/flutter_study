import 'package:flutter/material.dart';

import 'data/list_data.dart';

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is Title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView 动态列表'),
        ),
        body: const HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  getList() {
    var list = listData.map((item) {
      return Column(
        children: [
          Image.network(item["imgUrl"]),
          Text(item['author']),
        ],
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      /// 水平方向的个数
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 8,
      padding: const EdgeInsets.fromLTRB(10, 8, 10, 20),
      childAspectRatio: 1.2,
      children: getList(),
    );
  }
}
