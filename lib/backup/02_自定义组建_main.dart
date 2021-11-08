import 'package:flutter/material.dart';

void main() {
  runApp(const Root());
}

/// 自定义组建
class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('自定义组建',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.blue,
              // color: Color.fromRGBO(56, 189, 189, 0.5)
            )));
  }
}
