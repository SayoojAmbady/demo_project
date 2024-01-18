
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
      backgroundColor: Color.fromARGB(255, 243, 180, 180),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Image.asset("assets/images/logo-color.png"),
          SizedBox(height: 20,),
          Text("ShopX",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)],
        ),
        
        
      ),
    );
  }
}
