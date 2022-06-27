import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hiis_app/galryUploadImage.dart';
import 'package:hiis_app/main.dart';

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
  List<String> yearwisedata = [
    '2003-04',
    '2002-03',
    '2000-01',
    '1994-95',
    '1988-89',
    '1987-88',
    '1984-85',
    '1983-84',
    '1982-83',
    '1981-82',
    '1980-81',
    '1979-80',
    '1978-79',
    '1977-78',
    '1976-77',
    '1975-76',
    '1974-75',
    '1973-74',
    '1972-73',
    '1971-72',
    '1970-71',
    '1969-70',
    '1968-69',
    '1967-68',
    '1966-67',
    '1962-63',
  ];
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
        child: Container(
          height: 700,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: yearwisedata == null ? 0 : yearwisedata.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 7),
                    child: yearwisedata != null
                        ?
                        // GridView(
                        //     shrinkWrap: true,
                        //     padding: const EdgeInsets.only(
                        //         left: 24, right: 24, top: 24),
                        //     gridDelegate:
                        //         const SliverGridDelegateWithFixedCrossAxisCount(
                        //             crossAxisCount: 2,
                        //             crossAxisSpacing: 16,
                        //             mainAxisSpacing: 16),
                        //     children: [

                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ImageListn(
                                        heading: widget.heading,
                                        year: yearwisedata[index],
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
                                      yearwisedata[index].toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ),
                          )
                        // ],
                        // )
                        : const Center(
                            child: CircularProgressIndicator(),
                          ));
              }),
        ),
      ),
    );
  }
}
