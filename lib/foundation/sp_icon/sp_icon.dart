import 'package:flutter/material.dart';

class SPIcon extends StatelessWidget {
  const SPIcon(
      {Key? key,
      required this.assetname,
      this.index,
      this.currentIndex,
      this.isSelected= false});

  final String assetname;
  final int? index;
  final int? currentIndex;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/$assetname',
        height: 25,
        width: 25,
        color: isSelected? Colors.redAccent : Colors.black);
}
}