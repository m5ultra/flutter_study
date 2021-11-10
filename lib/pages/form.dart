import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage(data, {Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  Map data = {'title': '表单'};
  _FormPageState() {
    print(data);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(data['title']),
        ),
        body: const Text('this is from page'));
  }
}
