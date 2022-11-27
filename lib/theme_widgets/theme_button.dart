import 'package:fitness_app_design/data/util/theme_colors.dart';
import 'package:fitness_app_design/widgets/theme_icon.dart';
import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  String text;
  Icon? icon;
  Color? borderColor, iconBorderColor, iconBackgroundColor, backgroundColor, textColor;
  double height, width;
    Function()? onTap;
  ThemeButton(
      {Key? key,
      this.icon,
      required this.text,
      this.borderColor = Colors.transparent,
      this.iconBorderColor = const Color.fromARGB(255, 216, 216, 216),
      this.iconBackgroundColor = Colors.transparent,
      this.onTap, this.width = double.infinity, this.height = 50,
      this.backgroundColor =  ThemeColors.green, this.textColor = ThemeColors.white
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            minimumSize:  Size(width, height),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(color: borderColor!, width: 2),
            )),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             if (icon != null) ThemeIcon(iconBackgroundColor: iconBackgroundColor, iconBorderColor: iconBorderColor, icon: icon!) else const SizedBox(),
              if (icon != null) const SizedBox(
                width: 15,
              ) else const SizedBox(),
              Text(
                text,
                style:  TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            ],
          ),
        ));
  }
}

