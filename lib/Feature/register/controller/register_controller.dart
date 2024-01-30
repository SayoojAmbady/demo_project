import 'dart:convert';
import 'package:demo_project/Feature/landing_page/landing_page.dart';
import 'package:demo_project/Feature/login/controller/login_controller.dart';
import 'package:demo_project/Feature/register/model/register_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../service/network_handler/network_handler.dart';

class RegisterController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController altMobileController = TextEditingController();
  TextEditingController hintController = TextEditingController();
  RxString gender = "".obs;
  var loginController = Get.find<LoginController>();

  void register() async {
    try {
      RegisterModel registerModel = RegisterModel(
          mobileNo: loginController.loginEditingController.text,
          password: passwordController.text,
          gender: gender.value,
          alternateMobile: altMobileController.text,
          email: emailController.text,
          fullName: fullNameController.text,
          hint: hintController.text);

      var response = await NetworkHandler.post(
          registerModelToJson(registerModel), "login/register");

      print("Raw Response: $response");

      var data = json.decode(response);
      await NetworkHandler.storeToken(data['token']);
      Get.offAll(LandingPage());
    } catch (error) {
      print("Error during registration: $error");
      Get.snackbar(
        "Error",
        "Failed to register. Please try again.",
        snackPosition: SnackPosition.BOTTOM
      );
    }
  }
}