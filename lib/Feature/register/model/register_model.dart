// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  String mobileNo;
  String password;
  String? fullName;
  String gender;
  String? email;
  String? alternateMobile;
  String? hint;

  RegisterModel({
    required this.mobileNo,
    required this.password,
    this.fullName,
    required this.gender,
    this.email,
    this.alternateMobile,
    this.hint,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        mobileNo: json["mobileNo"],
        password: json["password"],
        fullName: json["fullName"],
        gender: json["gender"],
        email: json["email"],
        alternateMobile: json["alternateMobile"],
        hint: json["hint"],
      );

  Map<String, dynamic> toJson() => {
        "mobileNo": mobileNo,
        "password": password,
        "fullName": fullName,
        "gender": gender,
        "email": email,
        "alternateMobile": alternateMobile,
        "hint": hint,
      };
}