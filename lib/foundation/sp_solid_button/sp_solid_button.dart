// import 'package:demo_project/theme/colors.dart';
// import 'package:flutter/material.dart';

// class SPSolidButton extends StatelessWidget {
//   const SPSolidButton({
//     Key? key,
//     required this.text,
//     this.onPressed, required Null Function() onpressed,
//   }) : super(key: key);
//   final String text;
//   final Function()? onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         onPressed: onPressed,
//         style: ButtonStyle(
//             elevation: MaterialStateProperty.all(0),
//             backgroundColor: MaterialStateProperty.all(Appcolor.buttonColor),
//             textStyle: MaterialStateProperty.all(
//                 TextStyle(fontSize: 12.5, fontWeight: FontWeight.w600))),
//         child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: 45,
//             child: Center(child: Text(text,style: TextStyle(color: Appcolor.whiteColor),))));
//   }
// }



import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';

class SPSolidButton extends StatelessWidget {
  const SPSolidButton({super.key, required this.text, this.onpressed});
  final String text;
  final Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpressed,
        style:  ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Appcolor.buttonColor)),
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(text,
                textAlign: TextAlign.center,
                style:  TextStyle(color: Appcolor.whiteColor))));
  }
}

