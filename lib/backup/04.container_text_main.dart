import "package:flutter/material.dart";

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "2222",
        home: Scaffold(
            appBar: AppBar(
              title: const Text('样式'),
            ),
            body: const Center(
              child: HomeContent(),
            )));
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        'A non-null String must be provided to a Text widget. A non-null String must be provided to a Text widget.',
        textAlign: TextAlign.justify,
        textScaleFactor: 1.2,
        maxLines: 2,
        style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            // fontWeight: FontWeight.bold,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            textBaseline: TextBaseline.alphabetic,
            backgroundColor: Colors.black,
            letterSpacing: 2.0,
            wordSpacing: 1.0,
            overflow: TextOverflow.ellipsis),
      ),
      // alignment: Alignment.topCenter,
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: Colors.blue, width: 10),
      ),
      padding: const EdgeInsets.fromLTRB(10, 15, 20, 25),
      margin: const EdgeInsets.fromLTRB(10, 15, 20, 25),
      // margin: EdgeInsets.only(top: 50.0, left: 120.0),
      // transform: Matrix4.translationValues(-10, -20, -25), Matrix4.rotationZ(.3),
      // 旋转
      transform: Matrix4.rotationZ(.1),
      // 缩放
      // transform: Matrix4.diagonal3Values(1, 1.5, 2),
    );
  }
}
