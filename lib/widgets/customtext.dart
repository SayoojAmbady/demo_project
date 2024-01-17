import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String? trailingText;
  final double? trailingFontSize;
  final FontWeight? trailingFontWeight;
  final Color? trailingColor;
  final String? avatarImageUrl;
  final double avatarRadius;
  final IconData? iconData;
  

  CustomText({
    required this.text,
    this.fontSize = 25.0,
    this.fontWeight = FontWeight.bold,
    this.color = Colors.black,
    this.trailingText,
    this.trailingFontSize = 12.0,
    this.trailingFontWeight = FontWeight.normal,
    this.trailingColor = Colors.blue,
    this.avatarImageUrl,
    this.avatarRadius = 30.0,
    this.iconData,
   
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (iconData != null)
            Icon(
              iconData,
              size: fontSize,
              color: color,
            ),
          


          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: color,
            ),
          ),
          if (trailingText != null)
            Text(
              trailingText!,
              style: TextStyle(
                fontSize: trailingFontSize ?? fontSize,
                fontWeight: trailingFontWeight ?? fontWeight,
                color: trailingColor ?? color,
              ),
            ),
          if (avatarImageUrl != null)
            CircleAvatar(
              radius: avatarRadius,
              backgroundImage: NetworkImage(avatarImageUrl!),
            ),
        ],
      ),
    );
  }
}
