import 'package:flutter/material.dart';
import 'package:flutter_webapp/headtitle.dart';
import 'constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase/firebase.dart' as fb;

class Detail extends StatefulWidget {
  Detail({Key key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

//variable

//medthod
class _DetailState extends State<Detail> {
  final formKey = GlobalKey<FormState>();
  String nameString, surNameString, passwordString;

  var database = fb.database();

  sendData(String name, String lastname) {
    fb.database().ref('User/' + name +' '+ lastname).set({
      'name': '$name',
      'lastName': '$lastname',
    });
    print('done');
  }

  Widget textName(String name) {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      height: 80.0,
      decoration: new BoxDecoration(
          border: new Border.all(color: Colors.white, width: 2.0),
          borderRadius: new BorderRadius.circular(12.0)),
      child: new TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: name,
          labelStyle: TextStyle(color: Colors.white),
        ),
        onSaved: (String value) {
          nameString = value;
        },
        validator: (String value) {
          if (value.isEmpty) {
            return 'Please Fill Name in Blank';
          }
        },
      ),
    );
  }

  Widget textSurname(String surname) {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      height: 80.0,
      decoration: new BoxDecoration(
          border: new Border.all(color: Colors.white, width: 2.0),
          borderRadius: new BorderRadius.circular(12.0)),
      child: new TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: surname,
          labelStyle: TextStyle(color: Colors.white),
        ),
        onSaved: (String value) {
          surNameString = value;
        },
        validator: (String value) {
          if (value.isEmpty) {
            return 'Please Fill SurName in Blank';
          }
        },
      ),
    );
  }

  Widget sizebox() {
    return SizedBox(
      height: 50,
    );
  }

  Widget upLoadButton() {
    return ButtonTheme(
      minWidth: 200.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.orange[900],
        child: Text(
          'ยืนยัน',
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          print('Upload');
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            sendData(nameString, surNameString);
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
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
              Headtitle(),
              Form(
                  key: formKey,
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.08)),
                      child: Column(
                        children: [
                          textName("ชื่อ"),
                          textSurname("นามสกุล"),
                          sizebox(),
                          upLoadButton(),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
