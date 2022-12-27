// To parse this JSON data, do
//
//     final statusList = statusListFromJson(jsonString);

import 'dart:convert';

StatusList statusListFromJson(String str) => StatusList.fromJson(json.decode(str));

String statusListToJson(StatusList data) => json.encode(data.toJson());

class StatusList {
    StatusList({
        this.name,
        this.updatedAt,
        this.image,
    });

    String? name;
    String? updatedAt;
    String? image;

    factory StatusList.fromJson(Map<String, dynamic> json) => StatusList(
        name: json["name"],
        updatedAt: json["updatedAt"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "updatedAt": updatedAt,
        "image": image,
    };
}
