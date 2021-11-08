import 'package:flutter/material.dart';

import '../data/list_data.dart';

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
    var data = listData.map((item) {
      return ListTile(
        title: Text('这是第${item['index']}行数据！！！'),
        leading: Image(image: NetworkImage(item['imgUrl'])),
        subtitle: Text(item['author']),
      );
    });
    return data.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('这是第${listData[index]['index']}行数据！'),
          leading: Image(image: NetworkImage(listData[index]['imgUrl'])),
          subtitle: Text(listData[index]['author']),
        );
      },
    );
  }
}
