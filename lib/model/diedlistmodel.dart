// To parse this JSON data, do
//
//     final diedList = diedListFromJson(jsonString);

import 'dart:convert';

List<DiedList> diedListFromJson(dynamic str) => List<DiedList>.from((str as dynamic).map((x) => DiedList.fromJson(x)));

String diedListToJson(List<DiedList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DiedList {
  String? img;
  String? name;
  String? died;
  String? description;

  DiedList({
    this.img,
    this.name,
    this.died,
    this.description,
  });

  factory DiedList.fromJson(Map<String, dynamic> json) => DiedList(
    img: json["img"],
    name: json["name"],
    died: json["Died"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "img": img,
    "name": name,
    "Died": died,
    "description": description,
  };
}
