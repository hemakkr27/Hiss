import 'package:flutter_share/flutter_share.dart';
import 'package:hiis_app/main.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:hiis_app/imagemodel.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ImageListn extends StatefulWidget {
  String year;
  String secode;
  String heading;
  ImageListn(
      {Key? key,
      required this.year,
      required this.secode,
      required this.heading})
      : super(key: key);

  @override
  State<ImageListn> createState() => _ImageListnState();
}

class _ImageListnState extends State<ImageListn> {
  List<ImageData>? imageResponse;
  String? imagevalue;
  int? selectedindex;
  String? Shareurl;
  int rotatetrun = 0;
  // double zoomeffectminScale = 0.1;
  // double zoomeffectmaxScale = 5.0;
  bool zoomvalue = true;

  int index = 1;
  Future<List<ImageData>?> fetchData() async {
    try {
      http.Response response = await http.get(Uri.parse(
          'http://103.87.24.58/hiisapi/imglist/' +
              widget.year +
              "/" +
              widget.secode));
      if (response.statusCode == 200) {
        imageResponse = imageDataFromJson(response.body);
        return imageResponse;
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }

  @override
  void initState() {
    super.initState();

    fetchData().then((users) {
      setState(() {
        imageResponse = users;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorCustom,
          title: Text(widget.heading),
        ),
        body: imageResponse != null && imageResponse?.length != 0
            ? ListView.builder(
                itemCount: imageResponse == null ? 0 : imageResponse?.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (() => setState(() {
                          selectedindex = index;
                          Shareurl = "http://103.87.24.58/dsofiles/" +
                              widget.year +
                              "/Final/" +
                              imageResponse![index].imgurl;
                        })),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 100,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: selectedindex == index
                                  ? Colors.red
                                  : colorCustom,
                              width: 3),
                        ),
                        child: imageResponse != null
                            ? InteractiveViewer(
                                // boundaryMargin: EdgeInsets.all(5.0),
                                constrained: zoomvalue,
                                // minScale: selectedindex == index
                                //     ? zoomeffectminScale
                                //     : 0.1,
                                // maxScale: selectedindex == index
                                //     ? zoomeffectmaxScale
                                //     : 0.5,
                                child: RotatedBox(
                                  quarterTurns:
                                      selectedindex == index ? rotatetrun : 0,
                                  child: Image.network(
                                    "http://103.87.24.58/dsofiles/" +
                                        widget.year +
                                        "/Final/" +
                                        imageResponse![index].imgurl,
                                    fit: BoxFit.fill,
                                    loadingBuilder:
                                        (context, child, loadingProgress) {
                                      if (loadingProgress == null) {
                                        return child;
                                      } else {
                                        return const Center(
                                            child: SizedBox(
                                          width: 30,
                                          height: 30,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                          ),
                                        ));
                                      }
                                      // You can use LinearProgressIndicator or CircularProgressIndicator instead
                                    },
                                  ),
                                ),
                              )
                            : const Center(
                                child: CircularProgressIndicator(
                                color: Colors.red,
                              ))),
                  );
                })
            : Center(child: Text("No Record Available")),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_home,
          backgroundColor: colorCustom,
          children: [
            SpeedDialChild(
                child: Icon(
                  Icons.zoom_out,
                  color: colorCustom,
                ),
                label: "zoom out",
                onTap: () {
                  setState(() {
                    // zoomeffectminScale + 0.1;
                    zoomvalue = true;
                  });
                }),
            SpeedDialChild(
                child: Icon(
                  Icons.zoom_in,
                  color: colorCustom,
                ),
                label: "zoom in",
                onTap: () {
                  setState(() {
                    // zoomeffectmaxScale - 0.5;
                    zoomvalue = false;
                  });
                }),
            SpeedDialChild(
              child: Icon(
                Icons.share,
                color: colorCustom,
              ),
              label: "Share",
              onTap: () {
                FlutterShare.share(title: "HIsS Image", linkUrl: Shareurl);
              },
            ),
            SpeedDialChild(
                child: Icon(
                  Icons.screen_rotation,
                  color: colorCustom,
                ),
                label: "Rotate",
                onTap: () {
                  setState(() {
                    rotatetrun = rotatetrun + 1;
                  });
                }),
            // SpeedDialChild(
            //   child: Icon(Icons.copy),
            //   label: "Copy",
            //   onTap: () {
            //     setState(() {});
            //   },
            // ),
          ],
        ));
  }
}




//http://164.100.200.46/hiisapi/imglist/1994-95/Area_Popul