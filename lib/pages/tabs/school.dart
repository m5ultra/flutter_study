import 'package:flutter/material.dart';

class School extends StatefulWidget {
  const School({Key? key}) : super(key: key);

  @override
  _SchoolState createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('this is school'),
    );
  }
}
