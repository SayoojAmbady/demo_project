import 'package:demo_project/foundation/profile_item/profile_item.dart';
import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({super.key});
  final double topContainerheight = 190;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          height: topContainerheight,
          child: Column(
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
            ]))
      ]),
    );
  }
}
