import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget showLogo() {
    return Container(
      width: 40,
      height: 40,
      child: Image.asset(
        'images/logo.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget massege() {
    return Container(
      width: 220,
      height: 40,
      child: Text(
        'Go Out Homepage',
      ),
      alignment: Alignment.center,
    );
  }

  Widget menu() {
    return Row(
      children: [
        showLogo(),
        massege(),
      ],
    );
  }

  Widget subtitle() {
    return Container(
      width: 500,
      height: 200,
      alignment: Alignment.topCenter,
      child: Text(
        'สถานที่ท่องเที่ยวทั่วโลก',
        style: TextStyle(fontSize: 50),
      ),
    );
  }

  Widget island() {
    return Container(
       width: 300,
       height: 300,
      child: Image.asset(
        'images/Island.jpg',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: menu(),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          subtitle(),
          island(),
          subtitle(),
            island(),
        ],
      ),
    );
  }
}
