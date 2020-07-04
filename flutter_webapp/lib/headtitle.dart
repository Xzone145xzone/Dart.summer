import 'package:flutter/material.dart';

class Headtitle extends StatefulWidget {
  Headtitle({Key key}) : super(key: key);

  @override
  _HeadtitleState createState() => _HeadtitleState();
}

class _HeadtitleState extends State<Headtitle> {
  Widget headtitle() {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: <Widget>[
          Text(
            'COMPUTER\n         ENGINEER',
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 44,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
          DropdownButton(
            items: [
              DropdownMenuItem(
                child: Text(
                  'ติดต่อเรา',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    color: const Color(0x7cdbf1ff),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
            onChanged: (value) {},
            icon: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Image.asset('assets/drop_down_icon.png'),
            ),
            underline: SizedBox(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return headtitle();
  }
}
