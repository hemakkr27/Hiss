import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UL;

Uri dser_1112 = Uri.parse('https://heyzine.com/flip-book/69724e6f10.html');
Uri dser_1213 = Uri.parse('https://heyzine.com/flip-book/e34919551b.html');
Uri dser_1314 = Uri.parse('https://heyzine.com/flip-book/2f17b3dd09.html');
Uri dser_1415 = Uri.parse('https://heyzine.com/flip-book/5bc9234e98.html');
Uri dser_1516 = Uri.parse('https://heyzine.com/flip-book/21f8863d8a.html');
Uri dser_1617 = Uri.parse('https://heyzine.com/flip-book/6e2df523b1.html');
Uri dser_1718 = Uri.parse('https://heyzine.com/flip-book/2647217802.html');
Uri dser_1819 = Uri.parse('https://heyzine.com/flip-book/bdbe75dabe.html');
Uri dser_1920 = Uri.parse('https://heyzine.com/flip-book/804056209c.html');
Uri dser_2021 = Uri.parse('https://heyzine.com/flip-book/02b5a7ad2a.html');
String title = "";

class ebookdata extends StatefulWidget {
  const ebookdata({Key? key}) : super(key: key);

  @override
  State<ebookdata> createState() => _ebookdataState();
}

class _ebookdataState extends State<ebookdata> {
  Future<void> _launch(Uri url) async {
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
        title: Text('Statistical Abstract of Haryana '),
      ),
      body: Container(
          child: ListView(reverse: true, padding: EdgeInsets.zero, children: <
              Widget>[
        InkWell(
          onTap: () {
            _launch(dser_1112);
          },
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
                // trailing: Icon(
                //   Icons.arrow_forward,
                //   color: Colors.white,
                // ),
                // leading: Icon(
                //   Icons.book_online_outlined,
                //   color: Colors.white,
                // ),
                title: Center(
                  child: Text(
                    '2011-12',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ),
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
              _launch(dser_1213);
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
              _launch(dser_1314);
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
              _launch(dser_1415);
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
                      '2015-16',
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
              _launch(dser_1516);
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
              _launch(dser_1617);
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
              _launch(dser_1718);
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
              _launch(dser_1819);
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
              _launch(dser_1920);
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
                    '2020-21',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            onTap: () {
              _launch(dser_2021);
            }),
      ])),
    );
  }
}



//http://164.100.200.46/dsofiles/1994-95/f
