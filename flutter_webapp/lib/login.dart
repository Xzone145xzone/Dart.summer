import 'package:flutter/material.dart';
import 'package:flutter_webapp/home_page.dart';

import 'constants.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
 
  Widget signUpButton() {
    return ButtonTheme(
      minWidth: 200.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.orange[900],
        child: Text(
          'เข้าสู้เว็ปไซต์',
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          print('You Click Login');


          /// Create Route
          var registerRoute =
              MaterialPageRoute(builder: (BuildContext context) => HomePage());
          Navigator.of(context).push(registerRoute);
        },
      ),
    );
  }

  Widget showLogo() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32), // shape เหลี่ยม
      ),
      child: Image.asset(
        'assets/ce.png',
        fit: BoxFit.contain,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [gradientStartColor, gradientEndColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.7]),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 300,
                            color: Colors.grey[600],
                            child: Text(
                              'Welcome OPH 2020',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 28,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 300,
                            color: const Color.fromRGBO(139, 69, 19, 1),
                            child: Text(
                              'CE SSRU',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 28,
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 350,
                        height: 350,
                        margin: EdgeInsets.all(10.0),
                        child: showLogo(),
                      ),
                      signUpButton(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
