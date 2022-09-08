import 'dart:async';

import 'package:flutter/material.dart';

import 'package:hiis_app/main.dart';

import 'Economicbook.dart';
import 'ebookdata.dart';
import 'home.dart';

import 'package:url_launcher/url_launcher.dart' as UL;

Uri disstab = Uri.parse('https://heyzine.com/flip-book/1bae3ca2c2.html');

class Firstscrn extends StatefulWidget {
  const Firstscrn({Key? key}) : super(key: key);

  @override
  State<Firstscrn> createState() => _FirstscrnState();
}

class _FirstscrnState extends State<Firstscrn> {
  @override
  void initState() {
    super.initState();
    // searchsel = popupRoutes;
  }

  Future<void> _launch(Uri url) async {
    await UL.canLaunchUrl(url) ? await UL.launchUrl(url) : Text("not found");
  }

  // void search(String query) {
  //   //query = _txtsearch.text;
  //   if (query.isEmpty) {
  //     aftersearchsel = searchsel;
  //     return;
  //   }
  //   query = query.toLowerCase();
  //   List<String> result = [];
  //   searchsel.forEach((element) {
  //     var name = element.toLowerCase();
  //     if (name.contains(query)) {
  //       result.add(element);
  //     }
  //   });
  //   aftersearchsel = result;
  //   setState(() {});
  // }

  // TextEditingController _txtsearch = TextEditingController();
  // List<String> searchsel = [];
  // List<String> aftersearchsel = [];
  // final List<String> popupRoutes = <String>[
  //   "Statistical Abstract of Haryana ebook",
  //   "District-statistical-abstracts-Kurukshetra ebook",
  //   "search1",
  //   "search2",
  //   "search3",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: Column(children: <Widget>[
        Container(
          height: 150,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: colorCustom,
            ),
            child: Text(
              'Haryana Integrated System of Statistics (HISS)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Card(
          child: ListTile(
            leading: const Icon(Icons.list),
            title: InkWell(
                child: Text('Search - Statistical Abstract of Haryana'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePagenew()));
                }),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.list),
            title: InkWell(
                child: Text('ebook - Statistical Abstract of Haryana'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ebookdata()));
                }),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.list),
            title: InkWell(
                child: Text('District-statistical-abstracts-Kurukshetra'),
                onTap: () {
                  _launch(disstab);
                }),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.list),
            title: InkWell(
                child: Text('Economic Survey of Haryana'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Economicbokdata()));
                }),
          ),
        ),
      ])),
      backgroundColor: Color.fromARGB(255, 232, 224, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/Picture2.jpg",
              width: MediaQuery.of(context).size.width / 1.1,
            ),
            Image.asset(
              "assets/images/Picture3.png",
              width: MediaQuery.of(context).size.width / 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
