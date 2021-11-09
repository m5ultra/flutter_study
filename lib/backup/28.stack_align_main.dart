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
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.orange,
        child: Stack(
          children: const [
            Align(
              child: Icon(
                Icons.home,
                size: 50,
                color: Colors.cyan,
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Icon(
                Icons.search,
                size: 50,
                color: Colors.blue,
              ),
              alignment: Alignment.bottomLeft,
            ),
            Align(
              child: Icon(
                Icons.ten_k_rounded,
                size: 50,
                color: Colors.cyan,
              ),
              alignment: Alignment(0, 0.9),
            ),
            Align(
              child: Icon(
                Icons.add_to_home_screen,
                size: 50,
                color: Colors.white70,
              ),
              alignment: Alignment(0, -1),
            )
          ],
        ),
      ),
    );
  }
}
