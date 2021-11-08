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
    return Column(
      children: [
        Container(
          color: Colors.black,
          height: 100,
          width: 500,
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
        ),
        Container(
            height: 100,
            width: 500,
            decoration: BoxDecoration(
                // border: Border.all(
                //   color: Colors.blue,
                //   width: 3,
                // ),
                ),
            child: Row(
              children: [
                Expanded(
                  child: Container(color: Colors.red, height: 100, width: 300),
                  flex: 1,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(width: 80, height: 47, color: Colors.cyan),
                      Container(width: 80, height: 47, color: Colors.orange)
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
