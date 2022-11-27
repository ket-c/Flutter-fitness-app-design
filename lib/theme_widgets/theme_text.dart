import 'package:flutter/material.dart';

//bold weight text
class BoldText extends StatelessWidget {
  final Color color;
  final double size;
  final String text;

   const BoldText(
    this.text, {
    Key? key,
    this.size = 20,
    this.color = Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      text,
      style:
          TextStyle(fontWeight: FontWeight.w900, color: color, fontSize: size),
    );
  }
}
//semi bold
class SemiBoldText extends StatelessWidget {
  final Color color;
  final double size;
  final String text;

   const SemiBoldText(
    this.text, {
    Key? key,
    this.size = 20,
    this.color = Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      text,
      style:
          TextStyle(fontWeight: FontWeight.w700, color: color, fontSize: size),
    );
  }
}

//regular weight text
class RegularText extends StatelessWidget {
  final Color color;
  final double size;
  final String text;
  
   const RegularText(
    this.text, {
    Key? key,
    this.size = 20,
    this.color = Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: FontWeight.w500, color: color, fontSize: size),
    );
  }
}

//light weight text
class LightText extends StatelessWidget {
  final Color color;
  final double size;
  final String text;
  
   const LightText(
    this.text, {
    Key? key,
    this.size = 20,
    this.color = Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: FontWeight.w300, color: color, fontSize: size),
    );
  }
}
//thin weight text
class ThinText extends StatelessWidget {
  final Color color;
  final double size;
  final String text;
  
   const ThinText(
    this.text, {
    Key? key,
    this.size = 20,
    this.color = Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: FontWeight.w100, color: color, fontSize: size),
    );
  }
}
