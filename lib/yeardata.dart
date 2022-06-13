import 'package:flutter/material.dart';
import 'package:hiis_app/galryUploadImage.dart';

import 'imagelists.dart';

class yeardatacls extends StatefulWidget {
  String seccode;
  yeardatacls({Key? key, required this.seccode}) : super(key: key);

  @override
  State<yeardatacls> createState() => _yeardataclsState();
}

class _yeardataclsState extends State<yeardatacls> {
  List<String> yearwisedata = [
    '1994-95',
    '1991',
    '1992',
    '1993',
    '1994',
    '1995'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const GalryAndCamraUpload()),
              ),
              child: const Text("Add Image"),
            ),
            // GestureDetector(
            //   child: Text("Add Image"),
            //   onTap: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => GalryAndCamraUpload()),
            //   ),
            // ),
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: yearwisedata == null ? 0 : yearwisedata.length,
                itemBuilder: (context, index) {
                  return Container(
                      padding: const EdgeInsets.only(left: 5, right: 5, top: 7),
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
                                          year: yearwisedata[index],
                                          secode: widget.seccode,
                                        )));
                              },
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 2, color: Colors.green)),
                                child: ListTile(
                                    trailing: Icon(Icons.arrow_forward),
                                    leading: Icon(Icons.ac_unit),
                                    title:
                                        Text(yearwisedata[index].toString())),
                              ),
                            )
                          // ],
                          // )
                          : const Text("loading image"));
                }),
          ],
        ),
      ),
    );
  }
}
