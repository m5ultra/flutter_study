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
      list.add(
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.yellow,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Image.network(
                  'https://scpic.chinaz.net/files/pic/pic9/202111/apic36302.jpg'),
              const Text('2'),
            ],
          ),
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      /// 水平方向的个数
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 8,
      padding: const EdgeInsets.fromLTRB(10, 8, 10, 20),
      childAspectRatio: 0.7,
      children: getList(),
    );
  }
}
