import 'package:flutter/material.dart';

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去处debug角标
      title: 'This is Title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('有状态组建'),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List ls = [];

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
          children: ls.map((val) {
        return ListTile(
          title: Text(val),
        );
      }).toList()),
      const SizedBox(
        height: 20,
      ),
      RaisedButton(
        onPressed: () {
          setState(() {
            ls.add('新增数据1');
            ls.add('新增数据2');
          });
        },
        child: const Text('Click me and try!'),
      )
    ]);
  }
}
