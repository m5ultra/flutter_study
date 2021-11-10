import 'package:flutter/material.dart';

import '../search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'this is home page',
          style: TextStyle(color: Colors.cyan, fontSize: 24),
        ),
        const SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const Search(),
              ),
            );
          },
          child: const Text('跳转到搜索页面'),
        ),
      ],
    );
  }
}
