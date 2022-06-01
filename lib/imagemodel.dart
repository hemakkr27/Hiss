// To parse this JSON data, do
//
//     final imageData = imageDataFromJson(jsonString);

import 'dart:convert';

List<ImageData> imageDataFromJson(String str) =>
    List<ImageData>.from(json.decode(str).map((x) => ImageData.fromJson(x)));

String imageDataToJson(List<ImageData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImageData {
  ImageData({
    required this.imgurl,
  });

  String imgurl;

  factory ImageData.fromJson(Map<String, dynamic> json) => ImageData(
        imgurl: json["imgurl"],
      );

  Map<String, dynamic> toJson() => {
        "imgurl": imgurl,
      };
}
