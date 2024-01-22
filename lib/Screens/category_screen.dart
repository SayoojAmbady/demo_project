import 'package:demo_project/Feature/Login/login_bottomsheet.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LoginBottomSheet()),
    );
  }
}