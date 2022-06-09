import 'package:flutter/material.dart';

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
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: yearwisedata == null ? 0 : yearwisedata.length,
            itemBuilder: (context, index) {
              return Container(
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
                                side:
                                    BorderSide(width: 2, color: Colors.green)),
                            child: ListTile(
                                leading: Icon(Icons.ac_unit),
                                title: Text(yearwisedata[index].toString())),
                          ),
                        )
                      // ],
                      // )
                      : const Text("loading image"));
            }),
      ),
    );
  }
}
