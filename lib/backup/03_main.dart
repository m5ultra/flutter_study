import 'package:flutter/material.dart';

void main() {
  runApp(const Root());
}

/// 自定义组建
class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'for android title',
      home: Scaffold(
          appBar: AppBar(title: const Text('自定义组建')),
          body: const HomeContent()),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Hello, Flutter!',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.blue,
              // color: Color.fromRGBO(56, 189, 189, 0.5)
            )));
  }
}
