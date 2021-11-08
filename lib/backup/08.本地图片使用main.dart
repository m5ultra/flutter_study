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
      child: SizedBox(
        height: 300,
        width: 300,
        child: ClipOval(
          child: Image.asset(
            "images/avatar.jpeg",
            width: 100.0,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
/**
 * 如何使用本地静态图片
 * 1.在根目录下新建image 2.0x 3.0x 4.0x文件夹 放入对应的图片文件
 * 2.在pubspce.yaml 文件放开assets的注释 注意：assets 属于 flutter的下级 注意缩进
 * 3.在组建中使用通过一下方式使用：
 * Image.asset(
    "images/avatar.jpeg",
    width: 100.0,
    height: 100,
    fit: BoxFit.cover,
    ),
 */
