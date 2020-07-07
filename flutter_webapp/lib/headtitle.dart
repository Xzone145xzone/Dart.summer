import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Headtitle extends StatefulWidget {
  Headtitle({Key key}) : super(key: key);

  @override
  _HeadtitleState createState() => _HeadtitleState();
}

class _HeadtitleState extends State<Headtitle> {
// variable

//medthod
  _launchURL(String url) async {
    
    
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
          DropdownButton<String>(
            items: [
              DropdownMenuItem<String>(
                child: Center(
                  child: Text(
                    'ติดต่อเรา',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Facebook",
                child: Center(
                  child: Text(
                    'Facebook',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 24,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Youtube",
                child: Center(
                  child: Text(
                    'Youtube',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 24,
                      color: Colors.red[900],
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Website",
                child: Center(
                  child: Text(
                    'Website',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
            onChanged: (value) {
              if (value == 'Facebook') {
                const url = 'https://www.facebook.com/ComputerEngineeringSSRU/';
                _launchURL(url);
              } else if (value == 'Youtube') {
                const url = 'https://www.youtube.com/channel/UCRz1y8LNlNtMke1o23ppmkw/videos';
                _launchURL(url);
              } else if(value == 'Website'){
                 const url = 'http://www.ce.fit.ssru.ac.th/';
                _launchURL(url);

              } 
              else {
                print(value);
              }
            },
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
