import 'package:flutter/material.dart';

void main() => runApp(const Root());

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int _currentIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('bottomNavigationBar'),
        ),
        body: Center(
          child: _widgetOptions[_currentIndex],
        ),
        bottomNavigationBar: _BtmNav(),
      ),
    );
  }

  void _setIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  _BtmNav() {
    return BottomNavigationBar(
      onTap: _setIndex,
      currentIndex: _currentIndex,
      fixedColor: Colors.amber[800],
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'school',
        ),
      ],
    );
  }
}
