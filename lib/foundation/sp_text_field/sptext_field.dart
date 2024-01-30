import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';


class SPTextFormField extends StatelessWidget {
  SPTextFormField(
      {super.key,
      required this.labelTxt,
      this.prefix,
      required this.validator,
      this.prefixIcon,
       this.controller,
      this.notice,
      this.textEditingController});

  final String labelTxt;
  final String? prefix;
  final String? Function(String? value)? validator;
  final Widget? prefixIcon;
   final TextEditingController? controller;
  final String? notice;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: 70,
          child: TextFormField(
              controller: textEditingController,
              style:  TextStyle(color: Appcolor.captionColor, fontSize: 12),
              validator: validator,
              decoration: InputDecoration(
                  labelText: labelTxt,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: prefixIcon,
                  ),
                  enabledBorder:  OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Appcolor.captionColor)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Colors.black54)),
                  errorBorder:  const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Colors.red)),
                  focusedErrorBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Colors.red))))),
      Text(
        notice ?? '',
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 10, color: Appcolor.buttonColor),
      )
    ]);
  }
}