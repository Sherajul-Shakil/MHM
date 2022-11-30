// To parse this JSON data, do
//
//     final regLogModel = regLogModelFromJson(jsonString);

import 'dart:convert';

RegLogModel regLogModelFromJson(String str) =>
    RegLogModel.fromJson(json.decode(str));

String regLogModelToJson(RegLogModel data) => json.encode(data.toJson());

class RegLogModel {
  RegLogModel({
    this.success,
    this.token,
    this.data,
    this.message,
  });

  bool? success;
  String? token;
  Data? data;
  String? message;

  factory RegLogModel.fromJson(Map<String, dynamic> json) => RegLogModel(
        success: json["success"],
        token: json["token"],
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "token": token,
        "data": data!.toJson(),
        "message": message,
      };

  @override
  String toString() {
    return 'RegLogModel{success: $success, token: $token, data: $data, message: $message}';
  }
}

class Data {
  Data({
    this.userId,
    this.name,
    this.email,
  });

  int? userId;
  String? name;
  String? email;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userId: json["user_id"],
        name: json["name"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "name": name,
        "email": email,
      };

  @override
  String toString() {
    return 'Data{userId: $userId, name: $name, email: $email}';
  }
}
