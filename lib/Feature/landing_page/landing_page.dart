import 'package:demo_project/Feature/landing_page/controller/landingpage_controller.dart';
import 'package:demo_project/Feature/category/category_screen.dart';
import 'package:demo_project/Feature/home/home_screen.dart';
import 'package:demo_project/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../foundation/sp_icon/sp_icon.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentState = 0;

  final _pages = [HomeScreen(), CategoryScreen(), ProfileScreen()];

  get currentIndex => currentState;
   var landingPageController = Get.put(LandingPageController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[currentState],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentState,
        onTap: (newIndex) {
          setState(() {
            currentState = newIndex;
          });
        },
         unselectedItemColor: Colors.black87,
         selectedItemColor: Colors.redAccent,
        items: [
          BottomNavigationBarItem(
              icon: SPIcon(
                  assetname: 'logo-black.png',
                isSelected:0 == currentIndex,
                  ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SPIcon(
                  assetname: 'categories.png',
                  isSelected:1 == currentIndex,),
              label: "Categories"),
          BottomNavigationBarItem(
              icon:
                  SPIcon(assetname: 'profile.png', 
                  isSelected:2 == currentIndex,),
              label: "Profile")
        ],
     ),
);
}
}