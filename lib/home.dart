// ignore: unnecessary_import
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:hiis_app/chaptermodel.dart';
import 'package:hiis_app/main.dart';

import 'package:hiis_app/partmodel.dart';
import 'package:hiis_app/sectionmodel.dart';
import 'package:hiis_app/yeardata.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class HomePagenew extends StatefulWidget {
  const HomePagenew({Key? key}) : super(key: key);

  @override
  State<HomePagenew> createState() => _HomePagenewState();
}

class _HomePagenewState extends State<HomePagenew> {
  List<PartData>? partResponse;
  List<SectionData>? sectionResponse;
  List<ChapterData>? chapterResponse;
  List<ChapterData>? chapterResponse1;

  String? partvalue;
  String? sectionvalue;
  String? chaptervalue;
  TextEditingController _txtsearch = TextEditingController();

  Future<List<PartData>?> fetchData() async {
    try {
      http.Response response =
          await http.get(Uri.parse('http://164.100.200.46/hiisapi/PartMas'));
      if (response.statusCode == 200) {
        partResponse = partDataFromJson(response.body);

// if we add in list (one item) than use this add code

        partResponse?.add(new PartData(partName: "All", partCode: "0"));
        return partResponse;
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }

  Future<List<SectionData>?> fetchsectData(String id) async {
    try {
      http.Response response = await http
          .get(Uri.parse('http://164.100.200.46/hiisapi/SectionMas/' + id));
      if (response.statusCode == 200) {
        sectionResponse = sectionDataFromJson(response.body);
        return sectionResponse;
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }

  Future<List<ChapterData>?> fetchchepttData() async {
    try {
      http.Response response =
          await http.get(Uri.parse('http://164.100.200.46/hiisapi/Chapter'));
      if (response.statusCode == 200) {
        chapterResponse = chapterDataFromJson(response.body);
        //  chapterResponse1 = chapterResponse;
        return chapterResponse;
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }

  Future<void> setSection(String id) async {
    sectionvalue = null;
    var d = await fetchsectData(id);
    setState(() {});
  }

  void filter() {
    if (_txtsearch.text.trim().isNotEmpty) {
      setState(() {
        chapterResponse1 = chapterResponse
            ?.where((element) => element.chapterName.contains(_txtsearch.text))
            .toList();
      });
    } else {
      setState(() {
        chapterResponse1 = chapterResponse1
            ?.where((element) => element.sectionCode == sectionvalue)
            .toList();
      });
    }
  }

  Future<void> setchapter(String id) async {
    chaptervalue = null;
    // var d = await fetchchepttData(id);
    var d = await fetchchepttData().then((value) => chapterResponse1 =
        value?.where((element) => element.sectionCode == id).toList());
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchchepttData().then((value) => null);
    fetchData().then((users) {
      setState(() {
        partResponse = users;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Haryana Integrated System of Statistics (HISS) '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            FormField<String>(builder: (FormFieldState<String> state) {
              return InputDecorator(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: colorCustom, width: 3),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                child: DropdownButton(
                  isDense: true,
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: Colors.transparent,
                  ),
                  isExpanded: true,
                  hint: const Text(
                    "Select Part",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: partvalue,
                  // ignore: prefer_null_aware_operators
                  items: partResponse != null
                      ? partResponse?.map((item) {
                          return DropdownMenuItem<String>(
                              value: item.partCode.toString(),
                              child: Text(item.partName));
                        }).toList()
                      : null,
                  onChanged: (item) {
                    partvalue = item.toString();
                    setSection(partvalue.toString());
                  },
                ),
              );
            }),
            const SizedBox(
              height: 20,
            ),
            FormField<String>(builder: (FormFieldState<String> state) {
              return InputDecorator(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(color: colorCustom, width: 3),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                child: DropdownButton(
                  isDense: true,
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: Colors.transparent,
                  ),
                  isExpanded: true,
                  hint: const Text(
                    "Select Section",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: sectionvalue,
                  // ignore: prefer_null_aware_operators
                  items: sectionResponse != null
                      ? sectionResponse?.map((item) {
                          return DropdownMenuItem<String>(
                              value: item.sectionCode.toString(),
                              child: Text(item.sectionName));
                        }).toList()
                      : null,
                  onChanged: (item) {
                    sectionvalue = item.toString();
                    setchapter(sectionvalue.toString());
                  },
                ),
              );
            }),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    side: BorderSide(width: 3, color: colorCustom)),
                child: ListTile(
                  leading: const Icon(Icons.search),
                  title: TextField(
                      controller: _txtsearch,
                      decoration: const InputDecoration(
                        hintText: 'Topic Search',
                        hintStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold),
                        border: InputBorder.none,
                        // hintText: 'search here...',
                        // border: OutlineInputBorder(
                        //     borderRadius: BorderRadius.vertical())
                      ),
                      onChanged: (text) => filter()),
                  trailing: InkWell(
                    child: Icon(Icons.cancel),
                    onTap: () {
                      _txtsearch.clear();
                    },
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: 600,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount:
                      chapterResponse1 == null ? 0 : chapterResponse1?.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => yeardatacls(
                                heading: chapterResponse1![index].chapterName,
                                // seccode: _txtsearch.toString()
                                // ignore: unrelated_type_equality_checks
                                seccode: chapterResponse1![index].sectionCode ==
                                        0
                                    ? chapterResponse1![index].sectionCode
                                    : chapterResponse1![index].sectionCode)));
                      },
                      child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                            side: BorderSide(
                              width: 1,
                              color: Colors.black,
                            )),
                        child: ListTile(
                          dense: true,
                          textColor: Colors.black,
                          title: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                    padding: new EdgeInsets.only(right: 20.0),
                                    child: new CircleAvatar(
                                      backgroundColor: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)],
                                      radius: 10.0,
                                    )),
                                // Icon(Icons.arrow_forward),

                                Text(
                                  "${chapterResponse1![index].chapterName}",
                                  style: const TextStyle(
                                      // fontSize: 15,

                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}

//http://164.100.200.46/dsofiles/1994-95/f
