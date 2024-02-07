import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';

class SPSolidButton extends StatelessWidget {
  const SPSolidButton({super.key, required this.text, this.onpressed, required this.width, this.height});
  final String text;
  final double width;
  final double? height;
  final Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpressed,
        style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Appcolor.buttonColor)),
        child: Container(
            width: width,
            height: height,
            child: Center(
              child: Text(text,
                  textAlign: TextAlign.center,
                  style:  TextStyle(color: Appcolor.whiteColor)),
            )));
  }
}

