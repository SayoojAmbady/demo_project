import 'package:demo_project/theme/colors.dart';
import 'package:demo_project/widgets/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screens/splashscreen.dart'; // Import your SplashScreen widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SplashScreen with GetX',
      theme: ThemeData(
          textTheme: TextTheme(
              headline6: TextStyle(
                  fontSize: 14.5,
                  letterSpacing: 0.15,
                  color: Appcolor.headline6),
              bodyText1: TextStyle(color: Appcolor.bodyColor1, fontSize: 15),
              caption: TextStyle(
                fontSize: 11,
                color: Appcolor.captionColor
              ))),
      initialRoute: '/splash', // Initial route to SplashScreen
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/home', page: () => BottomBar()),
      ],
    );
  }
}
