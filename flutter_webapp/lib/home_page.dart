import 'package:flutter/material.dart';
import 'package:flutter_webapp/detail_page.dart';
import 'package:flutter_webapp/headtitle.dart';
import 'package:flutter_webapp/login.dart';
import 'constants.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Headtitle(),
              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 32),
                child: Swiper(
                  itemCount: 1,
                  itemWidth:
                      MediaQuery.of(context).size.width - 2 * 64, //สูตรยืด
                  // layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        activeSize: 20, space: 8), // จุด
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print('HI');

                        /// Create Route
                        var registerRoute2 = MaterialPageRoute(
                            builder: (BuildContext context) => Detail());
                        Navigator.of(context).push(registerRoute2);
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 50),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      32), // shape เหลี่ยม
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 50),
                                      Text(
                                        activity[index].name,
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 32,
                                          color: const Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        'Computer Engineering',
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 23,
                                          color: primaryTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 32),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'ลงทะเบียน',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 18,
                                              color: secondaryTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: secondaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 20,
                            right: 24,
                            bottom: 30,
                            child: Text(
                              activity[index].position.toString(),
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 200,
                                color: primaryTextColor.withOpacity(0.08),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
