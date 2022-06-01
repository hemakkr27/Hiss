import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:hiis_app/imagemodel.dart';

class ImageListn extends StatefulWidget {
  String year;
  String secode;
  ImageListn({Key? key, required this.year, required this.secode})
      : super(key: key);

  @override
  State<ImageListn> createState() => _ImageListnState();
}

class _ImageListnState extends State<ImageListn> {
  List<ImageData>? imageResponse;
  String? imagevalue;
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

  final double minscale = 1;
  final double maxscale = 4;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: ListView.builder(
              itemCount: imageResponse == null ? 0 : imageResponse?.length,
              itemBuilder: (context, index) {
                return InteractiveViewer(
                  clipBehavior: Clip.none,
                  minScale: minscale,
                  maxScale: maxscale,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          child: imageResponse != null
                              ? Image(
                                  image: NetworkImage(
                                      "http://103.87.24.58/dsofiles/" +
                                          widget.year +
                                          "/Final/" +
                                          imageResponse![index].imgurl),
                                )
                              : const Text("loading image")),
                    ),
                  ),
                );
              }),
        ));
  }
}


//http://103.87.24.58/hiisapi/imglist/1994-95/Area_Popul