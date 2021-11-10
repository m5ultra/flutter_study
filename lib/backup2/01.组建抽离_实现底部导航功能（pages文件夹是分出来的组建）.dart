import 'package:flutter/material.dart';

import '../pages/tabs.dart';

void main() => runApp(const Root());

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'this is title',
      home: Tabs(),
      debugShowCheckedModeBanner: false,
    );
  }
}
