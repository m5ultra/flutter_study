import 'package:flutter/material.dart';

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
      child: GridView.count(crossAxisCount: 2, childAspectRatio: 1.7,
          // crossAxisSpacing: 10,
          // mainAxisSpacing: 10,
          // padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
              child: Image.network(
                  'https://www.itying.com/images/flutter/1.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
              child: Image.network(
                  'https://www.itying.com/images/flutter/2.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
              child: Image.network(
                  'https://www.itying.com/images/flutter/3.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
              child: Image.network(
                  'https://www.itying.com/images/flutter/4.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
              child: Image.network(
                  'https://www.itying.com/images/flutter/5.png',
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
              child: Image.network(
                  'https://www.itying.com/images/flutter/6.png',
                  fit: BoxFit.cover),
            ),
          ]),
    );
  }
}
