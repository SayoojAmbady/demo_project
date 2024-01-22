import 'package:demo_project/Feature/login/login_bottomsheet.dart';
import 'package:demo_project/foundation/profile_item/profile_item.dart';
import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({super.key});
  final double topContainerheight = 190;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: topContainerheight,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: topContainerheight * .58,
                  color: Appcolor.dummyBGColor,
                ),
                Container(
                  height: topContainerheight * .42,
                  color: Appcolor.whiteColor,
                )
              ],
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                height: 132,
                width: 132,
                child: Card(
                  child: Image.asset(
                    "assets/images/icons8-avatar-72(-xxhdpi).png",
                    color: Appcolor.bodyColor1,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 22,
                left: 168,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) =>
                              LoginBottomSheet());
                    },
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(Appcolor.buttonColor),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 12.5, fontWeight: FontWeight.w600))),
                    child: Container(
                        width: MediaQuery.of(context).size.width - 210,
                        height: 45,
                        child: Center(child: Text("LOGIN/SIGNUP")))))
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Container(
          color: Appcolor.whiteColor,
          child: const Column(
            children: [
              ProfileItem(
                title: "Orders",
                subtitle: "Check your order",
                assetName: "orders.png",
                isLast: false,
              ),
              ProfileItem(
                title: "Help Center",
                subtitle: "Help Regarding your recent purchase",
                assetName: "help-desk.png",
                isLast: false,
              ),
              ProfileItem(
                title: "Wishlist",
                subtitle: "Check your order",
                assetName: "wishlist.png",
                isLast: true,
              ),
            ],
          )),
      SizedBox(
        height: 18,
      ),
      Container(
          color: Appcolor.whiteColor,
          child: const Column(
            children: [
              ProfileItem(
                title: "Scan for coupon",
                assetName: "qr-code.png",
                isLast: false,
              ),
              ProfileItem(
                title: "Refer & Earn",
                assetName: "megaphone.png",
                isLast: true,
              ),
            ],
          )),
      SizedBox(
        height: 18,
      ),
      Container(
          color: Appcolor.whiteColor,
          child: const Column(children: [
            ProfileItem(
              title: "FAQs",
              isLast: false,
            ),
            ProfileItem(
              title: "About us",
              isLast: true,
            ),
            ProfileItem(
              title: "Terms of use",
              isLast: false,
            ),
            ProfileItem(
              title: "PRIVACY POLICY",
              isLast: true,
            ),
          ])),
      SizedBox(
        height: 50,
      ),
      Text(
        "APP VERSION 0.0.1",
        style: Theme.of(context).textTheme.labelSmall,
      ),
      SizedBox(
        height: 80,
      ),
    ]);
  }
}