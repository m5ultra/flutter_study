import "package:flutter/material.dart";

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "列表",
        home: Scaffold(
            appBar: AppBar(
              title: const Text('列表'),
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
    return ListView(
      children: [
        Container(
            child: const Text(
              'This Is Title',
              style: TextStyle(
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 0)),
        Container(
          child: const Image(
            image: NetworkImage(
              'https://imgv3.fotor.com/images/homepage-feature-card/%E5%9B%BE%E7%89%87%E8%A3%81%E5%89%AA.jpg',
            ),
            height: 300,
            fit: BoxFit.cover,
          ),
          margin: const EdgeInsets.fromLTRB(10, 5, 10, 20),
        ),
        Container(
          child: const Image(
            image: NetworkImage(
              'https://imgv3.fotor.com/images/homepage-feature-card/%E5%9B%BE%E7%89%87%E8%A3%81%E5%89%AA.jpg',
            ),
            height: 300,
            fit: BoxFit.cover,
          ),
          margin: const EdgeInsets.fromLTRB(10, 5, 10, 20),
        ),
        Container(
          child: const Image(
            image: NetworkImage(
              'https://imgv3.fotor.com/images/homepage-feature-card/%E5%9B%BE%E7%89%87%E8%A3%81%E5%89%AA.jpg',
            ),
            height: 300,
            fit: BoxFit.cover,
          ),
          margin: const EdgeInsets.fromLTRB(10, 5, 10, 20),
        ),
        Container(
          child: const Image(
            image: NetworkImage(
              'https://imgv3.fotor.com/images/homepage-feature-card/%E5%9B%BE%E7%89%87%E8%A3%81%E5%89%AA.jpg',
            ),
            height: 300,
            fit: BoxFit.cover,
          ),
          margin: const EdgeInsets.fromLTRB(10, 5, 10, 20),
        ),
      ],
    );
  }
}
