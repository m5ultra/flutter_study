import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  Map data = {};

  FormPage({Key? key, this.data = const {'title': 'biaodan'}})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text('444'),
      ),
      body: Text(data['xxx']),
    );
  }
}
