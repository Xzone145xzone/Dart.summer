import 'package:flutter/material.dart';

import 'Homepage.dart';

void main() => runApp(Layoutapp());

class Layoutapp extends StatefulWidget {
  Layoutapp({Key key}) : super(key: key);

  @override
  _LayoutappState createState() => _LayoutappState();
}

class _LayoutappState extends State<Layoutapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
