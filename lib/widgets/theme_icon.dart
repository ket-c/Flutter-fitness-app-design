import 'package:flutter/material.dart';

class ThemeIcon extends StatelessWidget {
  double? width, height;
   Color? borderColor, iconBorderColor, iconBackgroundColor;
   Icon icon;
   ThemeIcon({
    Key? key,
    this.iconBorderColor = Colors.white,
    this.iconBackgroundColor = Colors.transparent,
    this.width, this.height,
    required this.icon,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
        decoration: BoxDecoration(
          
          color: iconBackgroundColor,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: iconBorderColor!,
            width: 1,
          ),
        ),
        child: icon);
  }
}
