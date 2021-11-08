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
        decoration: const BoxDecoration(
          color: Colors.cyan,
        ),
        // TODO 加个Center，好像不图片不可以设置对齐方式了
        // TODO 设置宽高才有效果 在container和Image中间插一个控件就解决了
        child: Center(
          child: Image.network(
            'https://pics3.baidu.com/feed/e1fe9925bc315c60ce4fa97bcaa8a81a4854776b.jpeg?token=31bdab944da26009d56135286b306b91',
            alignment: Alignment.topLeft,
            // centerSlice: const Rect.fromLTRB(10, 20, 30, 40),
            // color: Colors.yellow,
            // colorBlendMode: BlendMode.screen,
            fit: BoxFit.cover,
            // width: 150,
          ),
        ),
      ),
    );
  }
}
