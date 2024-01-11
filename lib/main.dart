import 'package:demo_project/Screens/home_screen.dart';
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
      title: 'SplashScreen with GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',  // Initial route to SplashScreen
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
         GetPage(name: '/home', page: () => HomeScreen()),
      ],
    );
  }
}
