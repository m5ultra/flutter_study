import 'package:flutter/material.dart';

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'This is Title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Padding Row Column Expanded'),
        ),
        body: const HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0, // x axios
      runSpacing: 2.0, // y axios
      direction: Axis.horizontal,
      // alignment 调整布局方式
      alignment: WrapAlignment.start,
      // runAlignment: WrapAlignment.spaceAround,
      children: const [
        MyButton('第一季'),
        MyButton('第一二三季'),
        MyButton('第一四五六季'),
        MyButton('第一四五六季测试一二三'),
        MyButton('第一七百季'),
        MyButton('第一以及季'),
        MyButton('第一季'),
        MyButton('第一四五六季HH'),
      ],
    );
  }
}

// 按钮组建
class MyButton extends StatelessWidget {
  final String txt;

  const MyButton(this.txt, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        print('12345');
      },
      child: Text(txt),
      textColor: Theme.of(context).accentColor,
    );
  }
}
