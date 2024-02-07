import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appcolor{
  static Color whiteColor = const Color(0xffffffff);
  static Color headline6 = const Color(0xff7b828c);
  static Color dummyBGColor = const Color(0xff535565);
  static Color ScaffoldBGColor = const Color(0xfff3f3f3);
  static Color bodyColor1 = const Color(0xff7b828c);
  static Color captionColor = const Color(0xffbcbabf);
  static Color buttonColor = const Color(0xfffe416c);
}


class TitleFonts {
  static TextStyle headline1 = GoogleFonts.lato(
    fontSize: 35.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    letterSpacing: 0,
    height: 1.12,
  );

  static TextStyle headline2 = GoogleFonts.poppins(
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle headline3 = GoogleFonts.poppins(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle headline4 = GoogleFonts.lato(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static TextStyle headline5 = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}