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
    return ListView(
      children: [
        Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: const [
              ListTile(
                title: Text('张三', style: TextStyle(fontSize: 28)),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：18015153850'),
              ),
              ListTile(title: Text('地址：深圳市龙岗区')),
            ],
          ),
        ),
        Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: const [
              ListTile(
                title: Text('王武', style: TextStyle(fontSize: 28)),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：18015153850'),
              ),
              ListTile(title: Text('地址：深圳市龙岗区')),
            ],
          ),
        ),
        Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: const [
              ListTile(
                title: Text('莉丝', style: TextStyle(fontSize: 28)),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：18015153850'),
              ),
              ListTile(title: Text('地址：深圳市龙岗区')),
            ],
          ),
        ),
      ],
    );
  }
}
