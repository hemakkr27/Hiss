import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hiis_app/galryUploadImage.dart';
import 'package:hiis_app/main.dart';
import 'package:hiis_app/yearswisedata.dart';
import 'package:http/http.dart' as http;

import 'imagelists.dart';

class yeardatacls extends StatefulWidget {
  String seccode;
  String heading;
  yeardatacls({Key? key, required this.seccode, required this.heading})
      : super(key: key);

  @override
  State<yeardatacls> createState() => _yeardataclsState();
}

class _yeardataclsState extends State<yeardatacls> {
  List<Yearsdata>? yearResponse;
  Future<List<Yearsdata>?> fetchData() async {
    try {
      http.Response response = await http.get(Uri.parse(
          'http://103.87.24.58/hiisapi/ListYears/' + widget.seccode));
      if (response.statusCode == 200) {
        yearResponse = yearsdataFromJson(response.body);
        setState(() {});
        return yearResponse;
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorCustom,
        // leading: InkWell(
        //   child: Icon(Icons.arrow_back),
        //   onTap: () {},
        // ),
        title: Text(
          widget.heading,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 7),
          //height: 700,
          child: ListView.builder(
              reverse: true,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: yearResponse == null ? 0 : yearResponse!.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 7),
                    child: yearResponse != null
                        ? InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ImageListn(
                                        heading: widget.heading,
                                        year: yearResponse![index].year,
                                        secode: widget.seccode,
                                      )));
                            },
                            child: Card(
                              color: Colors.primaries[
                                  Random().nextInt(Colors.primaries.length)],
                              shape: RoundedRectangleBorder(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  side: BorderSide(
                                    width: 2,
                                    color: Colors.primaries[Random()
                                        .nextInt(Colors.primaries.length)],
                                  )),
                              child: ListTile(
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                  leading: Icon(
                                    Icons.book_online_outlined,
                                    color: Colors.white,
                                  ),
                                  title: Center(
                                    child: Text(
                                      yearResponse![index].year,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ),
                          )
                        : const Center(
                            child: CircularProgressIndicator(),
                          ));
              }),
        ),
      ),
    );
  }
}
