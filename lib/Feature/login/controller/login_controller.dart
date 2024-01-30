import 'dart:convert';
import 'package:demo_project/Feature/landing_page/landing_page.dart';
import 'package:demo_project/Feature/login/model/login_model.dart';
import 'package:demo_project/service/network_handler/network_handler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginController extends GetxController {
  TextEditingController loginEditingController = TextEditingController();
  void login() async {
    // Get.dialog(Center(child: CircularProgressIndicator()), barrierDismissible: false);
    try {
      LoginModel loginModel = LoginModel(mobileNo: loginEditingController.text);
      var response =
          await NetworkHandler.post(loginModelToJson(loginModel), "login");
      var data = json.decode(response);
      print("Response: $data"); // Add this line for debugging

      if (data["msg"] == "Registration Successful") {
        print("Redirecting to RegisterPage"); // Add this line for debugging
        //Get.to(() => RegisterPage());
      } else {
        await NetworkHandler.storeToken(data["token"]);
        Get.offAll(()=>LandingPage());
      }
    } catch (error) {
      print("Error during login: $error");
    }
  }
}