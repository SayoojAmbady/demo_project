import 'package:demo_project/profile/profile_without_login.dart';
import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.ScaffoldBGColor,
    appBar: AppBar(
      backgroundColor: Appcolor.whiteColor,
      elevation: 0,
      centerTitle: false,
      title: Text("Profile",style: Theme.of(context).textTheme.headline6,),
    ),
    body: SingleChildScrollView(child: SafeArea(child: ProfileWithoutLogin())),
    
    );
  }
}