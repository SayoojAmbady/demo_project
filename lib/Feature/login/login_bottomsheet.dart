// import 'package:demo_project/Feature/login/controller/login_controller.dart';
// import 'package:demo_project/Feature/register/register.dart';
// import 'package:demo_project/foundation/sp_solid_button/sp_solid_button.dart';
// import 'package:demo_project/foundation/sp_text_field/sptext_field.dart';
// import 'package:demo_project/theme/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:super_rich_text/super_rich_text.dart';

// // ignore: must_be_immutable
// class LoginBottomSheet extends StatelessWidget {
//    LoginBottomSheet({Key? key}):super(key: key) ;
//   var loginController = Get.put(LoginController());
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: BottomSheet(
        
//         onClosing: () {},
//         builder: (BuildContext context) {
//           return Container(
//               padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
//               height: MediaQuery.of(context).size.height / 2,
//               color: Appcolor.whiteColor,
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Image.asset(
//                           "assets/images/Myntra2.png",
//                           height: 55,
//                           width: 55,
//                         ),
//                         IconButton(
//                             onPressed: () {
//                               Get.back();
//                             },
//                             icon: Icon(
//                               Icons.clear,
//                               size: 25,
//                             ))
//                       ],
//                     ),
//                     SizedBox(
//                       height: 25,
//                     ),
//                     RichText(
//                         text: const TextSpan(
//                       children: [
//                         TextSpan(
//                           text: " LOGIN ",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 19),
//                         ),
//                         TextSpan(
//                           text: " or ",
//                           style: TextStyle(color: Colors.black, fontSize: 19),
//                         ),
//                         TextSpan(
//                           text: "SIGNUP",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 19),
//                         )
//                       ],
//                     )),
//                     SizedBox(
//                       height: 35,
//                     ),
                    
                        
//                     SPTextFormField(
//                     labelTxt: "mobile number",
//                     textEditingController: loginController.loginEditingController,
//                      validator: (String? value){
//                        return null;
//                      },
//                     prefixIcon: const Text('+91 |'),),
                        
                    
//                     SizedBox(
//                       height: 35,
//                     ),
//                     SuperRichText(
//                       text:
//                           '  By Continuing i agree to the llTerms of Userll & llPrivacy Policyll',
//                       style:
//                           TextStyle(color: Appcolor.bodyColor1, fontSize: 13),
//                       othersMarkers: [
//                         MarkerText(
//                             marker: 'll',
//                             style: TextStyle(color: Appcolor.buttonColor)),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                      Flexible(child: SPSolidButton(text: "CONTINUE",onpressed: () => Get.to(RegisterPage()), width: MediaQuery.of(context).size.width,)),
//                     SizedBox(
//                       height: 12,
//                     ),
//                     SuperRichText(
//                       text: '  Having trouble logging in? llGet helpll',
//                       style:
//                           TextStyle(color: Appcolor.bodyColor1, fontSize: 13),
//                       othersMarkers: [
//                         MarkerText(
//                             marker: 'll',
//                             style: TextStyle(color: Appcolor.buttonColor)),
//                       ],
//                     ),
//                   ]));
//         },
//       ),
//     );
//   }
// }





import 'package:demo_project/Feature/login/controller/login_controller.dart';
import 'package:demo_project/Feature/register/register.dart';
import 'package:demo_project/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:demo_project/foundation/sp_text_field/sptext_field.dart';
import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_rich_text/super_rich_text.dart';

class LoginBottomSheet extends StatelessWidget {
  LoginBottomSheet({Key? key}) : super(key: key);
  
  var loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10 ),
            height: MediaQuery.of(context).size.height / 2,
            color: Appcolor.whiteColor,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/logo-medium-big.png",
                        height: 45,
                        width: 45,
                      ),
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.clear,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: " LOGIN ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        TextSpan(
                          text: " or ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                        ),
                        TextSpan(
                          text: "SIGNUP",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 35),
                  SPTextFormField(
                    labelTxt: "Mobile Number",
                    textEditingController: loginController.loginEditingController,
                    validator: (String? value) {
                      return null;
                    },
                    prefixIcon: const Text('+91 |'),
                  ),
                  SizedBox(height: 35),
                  SuperRichText(
                    text:
                        '  By Continuing I agree to the llTerms of Userll & llPrivacy Policyll',
                    style: TextStyle(
                      color: Appcolor.bodyColor1,
                      fontSize: 13,
                    ),
                    othersMarkers: [
                      MarkerText(
                        marker: 'll',
                        style: TextStyle(color: Appcolor.buttonColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SPSolidButton(
                    text: "CONTINUE",
                    onpressed: () => Get.to(RegisterPage()),
                    width: MediaQuery.of(context).size.width,
                    height:height*0.05 ,
                  ),
                  SizedBox(height: 20),
                  SuperRichText(
                    text: '  Having trouble logging in? llGet helpll',
                    style: TextStyle(
                      color: Appcolor.bodyColor1,
                      fontSize: 13,
                    ),
                    othersMarkers: [
                      MarkerText(
                        marker: 'll',
                        style: TextStyle(color: Appcolor.buttonColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

