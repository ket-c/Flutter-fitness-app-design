
import 'package:fitness_app_design/screens/picture_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app_design/screens/sport_menu_screen.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness App Design',
       theme: ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme (
      Theme.of(context).textTheme.apply(
        fontSizeFactor: 1,
          fontSizeDelta: 3.0,
      ),

    ),
  ),
      initialRoute: '/sports',
        routes: {
          '/sports': (context) => const SportMenuScreen(),
          '/picture': (context) =>  const PictureScreen(),
        }
    );
  }
}



