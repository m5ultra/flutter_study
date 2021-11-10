import 'package:flutter/material.dart';

import '../form.dart';

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
                  builder: (BuildContext context) => const FormPage({
                    "id": '0x12345',
                    'data': ['1', 'xxx', 1]
                  }),
                ),
              );
            },
            child: const Text('跳转到表单页面'),
          ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {},
            child: const Text('跳转到表单页面并传值'),
          ),
        ],
      ),
    );
  }
}
