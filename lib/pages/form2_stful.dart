import 'package:flutter/material.dart';

class FromPage2 extends StatefulWidget {
  Map data = {};

  FromPage2({Key? key, this.data = const {"title": 'from2默认值'}})
      : super(key: key);

  @override
  _FromPage2State createState() => _FromPage2State(data2: this.data);
}

class _FromPage2State extends State<FromPage2> {
  Map data2 = {};

  _FromPage2State({this.data2 = const {}});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('form2_stful'),
      ),
      body: Column(
        children: [
          Text(data2['title']),
          Text(data2['xxx']),
        ],
      ),
    );
  }
}
