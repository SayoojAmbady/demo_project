import 'package:demo_project/Feature/login/controller/login_controller.dart';
import 'package:demo_project/Feature/register/controller/register_controller.dart';
import 'package:demo_project/foundation/gender_button/gender_button.dart';
import 'package:demo_project/foundation/sp_text_field/sptext_field.dart';
import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:demo_project/foundation/sp_solid_button/sp_solid_button.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final formKey = GlobalKey<FormState>();
  var loginController = Get.find<LoginController>();
  var registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text("Complete Your SignUp",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                      key: formKey,
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "mobileNo",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Appcolor.dummyBGColor),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      loginController
                                          .loginEditingController.text,
                                      style: TextStyle(
                                          color: Appcolor.dummyBGColor),
                                    )
                                  ]),
                              const Icon(
                                Icons.verified_outlined,
                                color: Colors.greenAccent,
                              )
                            ]),
                        const SizedBox(height: 20),
                        // MARK:- Create Password
                        SPTextFormField(
                            labelTxt: "Create Password",
                            textEditingController:
                                registerController.passwordController,
                            validator: (value) {
                              (value) {
                                print(value);
                                if (value!.isEmpty) {
                                  return ("Passwords can't be empty");
                                }
                              };
                            }),
                        const SizedBox(height: 15),

                        //MARK:- Full Name
                        SPTextFormField(
                            labelTxt: "Fulname(Optional)",
                            textEditingController:
                                registerController.fullNameController,
                            validator: (value) {
                              (value) {
                                print(value);
                              };
                            }),
                        const SizedBox(height: 15),

                        //MARK:- Email
                        SPTextFormField(
                            labelTxt: "email(Optional)",
                            textEditingController:
                                registerController.emailController,
                            validator: (value) {
                              (value) {
                                print(value);
                              };
                            }),
                        // const SizedBox(height: 15),

                        Obx(() => GenderButton(
                            onGenderTap: onGenderTap,
                            genderValue: registerController.gender.value)),

                        const SizedBox(height: 30),

                        //MARK:- Alternate Number
                        SPTextFormField(
                            labelTxt: "Alternate mobileNo",
                            textEditingController:
                                registerController.altMobileController,
                            prefixIcon: const Text('+91 | '),
                            notice:
                                "This will help to recover your account if needed",
                            validator: (value) {
                              (value) {
                                print(value);
                                if (value!.isEmpty) {
                                  return ("Alternative Mobile is Epmty");
                                }
                              };
                            }),
                        const SizedBox(height: 15),

                        //MARK:- Hint Name
                        SPTextFormField(
                            labelTxt: "Hint Name",
                            textEditingController:
                                registerController.hintController,
                            notice:
                                "This name will be a hint for your alternate Mobile Number",
                            validator: (value) {
                              (value) {
                                print(value);
                              };
                            }),
                        const SizedBox(height: 15),

                        //MARK:- Create
                        SPSolidButton(
                          text: "create Account",
                          onpressed: () {
                            if (formKey.currentState!.validate()) {
                              registerController.register();
                            }
                          },
                        )
                      ])))),
        ));
  }

  void onGenderTap(String gender) {
    registerController.gender.value = gender;
    print(gender);
  }
}
