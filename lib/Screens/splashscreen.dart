import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    // Using GetX navigation after 3 seconds
    Future.delayed(
      Duration(seconds: 3),

      () => Get.offNamed('/home'), 
       // Navigate to home route
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 7, 7),
      body: Center(
        child: Image.asset("assets/images/VENUS logo red-02.png"),
      ),
    );
  }
}
