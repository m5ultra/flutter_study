import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;

  FormPage(this.title, {Key? key});

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
        title: Text(title),
      ),
      body: const Text('this is from page'),
    );
  }
}
