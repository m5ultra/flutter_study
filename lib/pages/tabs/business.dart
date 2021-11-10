import 'package:flutter/material.dart';

import '../form.dart';
import '../form2_stful.dart';

class Business extends StatefulWidget {
  const Business({Key? key}) : super(key: key);

  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('this is business page'),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      FormPage(data: const {"title": 123, 'xxx': 'yyy'}),
                ),
              );
            },
            child: const Text('跳转到无状态表单页面'),
          ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      FromPage2(data: const {"title": '123', 'xxx': 'yyy'}),
                ),
              );
            },
            child: const Text('跳转到有状态页面并传值'),
          ),
        ],
      ),
    );
  }
}
