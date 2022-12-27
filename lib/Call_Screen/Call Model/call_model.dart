// To parse this JSON data, do
//
//     final callModel = callModelFromJson(jsonString);

import 'dart:convert';

CallModel callModelFromJson(String str) => CallModel.fromJson(json.decode(str));

String callModelToJson(CallModel data) => json.encode(data.toJson());

class CallModel {
    CallModel({
        this.name,
        this.image,
        this.callAt,
        this.isCall,
    });

    String? name;
    String? image;
    String? callAt;
    bool? isCall;

    factory CallModel.fromJson(Map<String, dynamic> json) => CallModel(
        name: json["Name"],
        image: json["image"],
        callAt: json["callAt"],
        isCall: json["isCall"],
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "image": image,
        "callAt": callAt,
        "isCall": isCall,
    };
}
