import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  GenderButton(
      {super.key, required this.onGenderTap, required this.genderValue});
  final Function(String value) onGenderTap;
  final String genderValue;
  final TextStyle textStyleWhite = TextStyle(color: Appcolor.whiteColor);
  final TextStyle textStyleBlack = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Appcolor.captionColor)),
      child: Row(children: [
        Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap("Male");
              },
              child: Container(
                color: genderValue == "Male"
                    ? Appcolor.buttonColor
                    : Appcolor.whiteColor,
                child: Center(child: Text("Male", style : genderValue == "Male"?textStyleWhite:textStyleBlack)),
              ),
            )),
         VerticalDivider(
          width: 1,
          color: Appcolor.buttonColor,
        ),
        Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                onGenderTap("Female");
              },
              child: Container(
                color: genderValue == "Female"
                    ? Appcolor.buttonColor
                    : Appcolor.whiteColor,
                child: Center(child: Text("Female", style : genderValue == "Female"?textStyleWhite:textStyleBlack)),
              ),
            ))
      ]),
    );
  }
}