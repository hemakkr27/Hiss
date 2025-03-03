import 'dart:math';

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart' as UL;

Uri dser_19920 = Uri.parse('https://heyzine.com/flip-book/a327b2d739.html');
Uri dser_20001 = Uri.parse('https://heyzine.com/flip-book/ab3fd865e8.html');
Uri dser_20102 = Uri.parse('https://heyzine.com/flip-book/9f0b681d32.html');
Uri dser_20203 = Uri.parse('https://heyzine.com/flip-book/7eb953de43.html');
Uri dser_2034 = Uri.parse('https://heyzine.com/flip-book/167d748097.html');
Uri dser_2045 = Uri.parse('https://heyzine.com/flip-book/0d2d328983.html');
Uri dser_2056 = Uri.parse('https://heyzine.com/flip-book/55c30fede7.html');
Uri dser_2067 = Uri.parse('https://heyzine.com/flip-book/7198ac63e5.html');
Uri dser_2078 = Uri.parse('https://heyzine.com/flip-book/af32f6e579.html');
Uri dser_2089 = Uri.parse('https://heyzine.com/flip-book/2cfaf69a95.html');

Uri dser_20910 = Uri.parse('https://heyzine.com/flip-book/d12e7f9a73.html');
Uri dser_21011 = Uri.parse('https://heyzine.com/flip-book/73f0dc28ac.html');

Uri dser_21112 = Uri.parse('https://heyzine.com/flip-book/99d9508471.html');
Uri dser_21213 = Uri.parse('https://heyzine.com/flip-book/cfc744823f.html');
Uri dser_21314 = Uri.parse('https://heyzine.com/flip-book/509649a567.html');
Uri dser_21415 = Uri.parse('https://heyzine.com/flip-book/98b5a84ccd.html');
Uri dser_21516 = Uri.parse('https://heyzine.com/flip-book/a678f70db0.html');

Uri dser_21617 = Uri.parse('https://heyzine.com/flip-book/38b9bd3b46.html');
Uri dser_21718 = Uri.parse('https://heyzine.com/flip-book/6edde1ebfd.html');

Uri dser_21819 = Uri.parse('https://heyzine.com/flip-book/ccb9fad66d.html');

Uri dser_21920 = Uri.parse('https://heyzine.com/flip-book/57fcf0b7df.html');
String title = "";

class Economicbokdata extends StatefulWidget {
  const Economicbokdata({Key? key}) : super(key: key);

  @override
  State<Economicbokdata> createState() => _EconomicbokdataState();
}

class _EconomicbokdataState extends State<Economicbokdata> {
  Future<void> _launch(Uri url) async {
    await UL.canLaunchUrl(url) ? await UL.launchUrl(url) : Text("not found");

    try {
      if (!await UL.launchUrl(url)) {
        setState(() {
          title = 'Could not launch $url';
        });
      }
    } catch (e) {
      setState(() {
        title = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Economic Survey of Haryana'),
      ),
      body: Container(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2019-20',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_21920);
            }),
        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2018-19',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_21819);
            }),

        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2017-18',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_21718);
            }),

        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2016-17',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_21617);
            }),
        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2015-16',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_21516);
            }),

        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2014-15',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_21415);
            }),

        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2013-14',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_21314);
            }),

        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2012-13',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_21213);
            }),
        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2011-12',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_21112);
            }),

        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2010-11',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_21011);
            }),

        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2009-10',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_20910);
            }),

        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2008-09',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_2089);
            }),

        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2007-08',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_2078);
            }),

        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2006-07',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_2067);
            }),

        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2005-06',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_2056);
            }),
        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2004-05',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_2045);
            }),
        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                horizontalTitleGap: 10,
                title: Center(
                  child: Text(
                    '2003-04',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_2034);
            }),
        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                title: Center(
                  child: Text(
                    '2002-03',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_20203);
            }),
        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                title: Center(
                  child: Text(
                    '2001-02',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_20102);
            }),
        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                title: InkWell(
                  child: Center(
                    child: Text(
                      '2000-01',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_20001);
            }),
        InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
              decoration: BoxDecoration(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: ListTile(
                title: Center(
                  child: Text(
                    '1999-00',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_19920);
            }),
        // InkWell(
        //     child: Container(
        //       margin: EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
        //       decoration: BoxDecoration(
        //         color:
        //             Colors.primaries[Random().nextInt(Colors.primaries.length)],
        //         borderRadius: BorderRadius.only(
        //           bottomRight: Radius.circular(40.0),
        //           topLeft: Radius.circular(40.0),
        //         ),
        //       ),
        //       child: ListTile(
        //         title: Center(
        //           child: Text(
        //             '2017-18',
        //             style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.bold),
        //           ),
        //         ),
        //       ),
        //     ),
        //     onTap: () {
        //       _launch(dser_1718);
        //     }),
      ])),
    );
  }
}



//http://164.100.200.46/dsofiles/1994-95/f
