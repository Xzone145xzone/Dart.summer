import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget ooc() {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Color.fromRGBO(255, 255, 255, 0.5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.black12],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            //stop:
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32), // shape เหลี่ยม
            ),
            child: Image.network(
              'http://www.ce.fit.ssru.ac.th/useruploads/images/20180925/d21ed628518729af8c30d23f9dd16ba37d90c473.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
