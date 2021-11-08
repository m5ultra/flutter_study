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
              title: const Text('图片'),
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
    return Center(
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.cyan,
          // borderRadius: BorderRadius.all(
          //   Radius.circular(150),
          // ),
          borderRadius: BorderRadius.circular(150),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://pics3.baidu.com/feed/e1fe9925bc315c60ce4fa97bcaa8a81a4854776b.jpeg?token=31bdab944da26009d56135286b306b91'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
