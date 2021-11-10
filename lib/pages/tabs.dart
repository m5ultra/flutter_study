import 'package:flutter/material.dart';

import 'tabs/business.dart';
import 'tabs/home.dart';
import 'tabs/school.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List<Widget> ls = [const Home(), const Business(), const School()];
  void _setIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bottomNavigationBar'),
      ),
      body: ls[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _setIndex,
        currentIndex: _currentIndex,
        iconSize: 24.0,
        fixedColor: Colors.amber[800],
        type: BottomNavigationBarType.fixed,
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
      ),
    );
  }
}
