import 'package:demo_project/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:super_rich_text/super_rich_text.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              height: MediaQuery.of(context).size.height / 2,
              color: Appcolor.whiteColor,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/Myntra2.png",
                          height: 55,
                          width: 55,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.clear,
                              size: 25,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RichText(
                        text: const TextSpan(
                      children: [
                        TextSpan(
                          text: " LOGIN ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19),
                        ),
                        TextSpan(
                          text: " or ",
                          style: TextStyle(color: Colors.black, fontSize: 19),
                        ),
                        TextSpan(
                          text: "SIGNUP",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      height: 43,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Appcolor.captionColor,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                            labelText: "Mobile Number",
                            labelStyle: const TextStyle(
                              fontSize: 14,
                            ),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                "+91 |",
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Appcolor.captionColor)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.5, color: Colors.black54))),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    SuperRichText(
                      text:
                          '  By Continuing i agree to the llTerms of Userll & llPrivacy Policyll',
                      style:
                          TextStyle(color: Appcolor.bodyColor1, fontSize: 13),
                      othersMarkers: [
                        MarkerText(
                            marker: 'll',
                            style: TextStyle(color: Appcolor.buttonColor)),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SPSolidButton(text: "CONTINUE"),
                    SizedBox(
                      height: 30,
                    ),
                    SuperRichText(
                      text: '  Having trouble logging in? llGet helpll',
                      style:
                          TextStyle(color: Appcolor.bodyColor1, fontSize: 13),
                      othersMarkers: [
                        MarkerText(
                            marker: 'll',
                            style: TextStyle(color: Appcolor.buttonColor)),
                      ],
                    ),
                  ]));
        },
      ),
    );
  }
}
