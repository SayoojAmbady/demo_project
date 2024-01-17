import 'package:demo_project/widgets/customtext.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [SizedBox(height: 40,),
          Row(
            children: [
              CustomText(text: '',iconData: Icons.arrow_back,),
              Spacer(),
              CustomText(text: '',iconData: Icons.shopping_cart,)
            ],
          ),
          ],
        ),),
      )),
    );
  }
}
