import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UL;

Uri dser_1213 = Uri.parse('https://heyzine.com/flip-book/1bae3ca2c2.html');
// Uri dser_1314 = Uri.parse('');
// Uri dser_1415 = Uri.parse('');
// Uri dser_1516 = Uri.parse('');
// Uri dser_1617 = Uri.parse('');
// Uri dser_1718 = Uri.parse('');
// Uri dser_1819 = Uri.parse('');
// Uri dser_1920 = Uri.parse('');
// Uri dser_2021 = Uri.parse('');

class districtstatistical extends StatefulWidget {
  const districtstatistical({Key? key}) : super(key: key);

  @override
  State<districtstatistical> createState() => _districtstatisticalState();
}

class _districtstatisticalState extends State<districtstatistical> {
  Future<void> _launch(Uri url) async {
    await UL.canLaunchUrl(url) ? await UL.launchUrl(url) : Text("not found");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('District-statistical-abstracts-Kurukshetra'),
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
       
      ])),
    );
  }
}



//http://164.100.200.46/dsofiles/1994-95/f
