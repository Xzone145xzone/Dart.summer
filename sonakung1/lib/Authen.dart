import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  double mySize = 100.0;

  final formKey = GlobalKey<FormState>();
  String emailString = '', passwordString = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
//Medthod
  @override
  void initState() {
    super.initState();
  }

  Widget mySizeBox() {
    return SizedBox(
      width: 8.0,
    );
  }

  Widget signUpButton() {
    return RaisedButton(
      color: Colors.green,
      child: Text(
        'Sign Up',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        print('You Click SignUp');
      },
    );
  }

  Widget signInButton() {
    return RaisedButton(
      color: Colors.green,
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        formKey.currentState.save();
      },
    );
  }

  Widget myButton() {
    return Container(
      width: 220.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: signInButton(),
          ),
          mySizeBox(),
          Expanded(
            child: signUpButton(),
          ),
        ],
      ),
    );
  }

  Widget passwordText() {
    return Container(
      width: 220.0,
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'More 6 Charactor',
        ),
        onSaved: (String value) {
          passwordString = value;
        },
      ),
    );
  }

  Widget emailText() {
    return Container(
      width: 220.0,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email :',
          hintText: 'you@email.com',
        ),
        onSaved: (String value) {
          emailString = value;
        },
      ),
    );
  }

  Widget showLogo() {
    return Container(
      width: mySize,
      height: mySize,
      child: Image.asset(
        'images/new-k-plus-logo.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget showText() {
    return Text(
      'K PLUS',
      style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: 'Inconsolata'),
    );
  }

  void myShowSnackBar(String messageString) {
    SnackBar snackBar = SnackBar(
      content: Text(messageString),
      backgroundColor: Colors.pink[700],
      duration: Duration(seconds: 8),
      action: SnackBarAction(
        label: 'close',
        onPressed: () {},
        textColor: Colors.white,
      ),
    );
    scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.blueGrey[300], Colors.blueGrey[600]],
          begin: Alignment.topCenter,
        )),
        alignment: Alignment.topCenter,
        child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              showLogo(),
              showText(),
              emailText(),
              passwordText(),
              myButton(),
              ],
            )),
      ),
    );
  }
}
