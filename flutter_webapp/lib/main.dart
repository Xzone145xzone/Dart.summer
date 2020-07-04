import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webapp/login.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'CE SSRU',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      
      ),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}