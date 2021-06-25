// To parse this JSON data, do
//
//     final kopek = kopekFromJson(jsonString);

/*import 'dart:convert';

Kopek kopekFromJson(String str) => Kopek.fromJson(json.decode(str));

String kopekToJson(Kopek data) => json.encode(data.toJson());

class Kopek {
  Kopek({
    this.message,
    this.status,
  });

  String message;
  String status;

  factory Kopek.fromJson(Map<String, dynamic> json) => Kopek(
        message: json["message"] == null ? null : json["message"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message": message == null ? null : message,
        "status": status == null ? null : status,
      };
}*/
