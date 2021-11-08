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

  Widget getListData(context, index) {
    return Container(
      child: Column(
        children: [
          Image.network(listData[index]['imgUrl']),
          Text(listData[index]['title'])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 通过 GridView.builder 布局
    return GridView.builder(
      itemBuilder: getListData,
      itemCount: listData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.2,
      ),
    );
  }
}
