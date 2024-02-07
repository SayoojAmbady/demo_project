
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SplashScreen extends StatelessWidget {
//   @override
  
//   Widget build(BuildContext context) {
//     // Using GetX navigation after 3 seconds
//     Future.delayed(
//       Duration(seconds: 3),

//       () => Get.offNamed('/home'), 
//        // Navigate to home route
//     );

//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 255, 254, 254),
//       body: Center(
//         child:Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [ Image.asset("assets/images/logo-color.png"),
//           SizedBox(height: 20,),
//           Text("ShopX",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)],
//         ),
        
        
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    // Using GetX navigation after 3 seconds
    Future.delayed(
      Duration(seconds: 3),
      () => Get.offNamed('/home'),
      // Navigate to home route
    );

    // Animation setup
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

   _slideAnimation = Tween<Offset>(begin: Offset(0, 1),end:Offset.zero).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));

    // Start the animation
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 254, 254),
      body: Center(
        child: SlideTransition(
            position: _slideAnimation,
          
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo-color.png"),
                  SizedBox(height: 20,),
                  Text(
                    "ShopX",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
      ));
          }

            @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

        
  }

