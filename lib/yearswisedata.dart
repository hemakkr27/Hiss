// To parse this JSON data, do
//
//     final yearsdata = yearsdataFromJson(jsonString);

import 'dart:convert';

List<Yearsdata> yearsdataFromJson(String str) =>
    List<Yearsdata>.from(json.decode(str).map((x) => Yearsdata.fromJson(x)));

String yearsdataToJson(List<Yearsdata> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Yearsdata {
  Yearsdata({
    required this.year,
  });

  String year;

  factory Yearsdata.fromJson(Map<String, dynamic> json) => Yearsdata(
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "year": year,
      };
}
