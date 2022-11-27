import 'dart:ui';

import 'package:fitness_app_design/data/util/theme_colors.dart';
import 'package:fitness_app_design/data/util/theme_text.dart';
import 'package:fitness_app_design/widgets/theme_button.dart';
import 'package:flutter/material.dart';

class PictureScreen extends StatelessWidget {
  const PictureScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/gym_girl.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: null /* add child content here */,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ThemeColors.greyDark,
                      child: Icon(
                        Icons.group,
                        color: ThemeColors.yellow,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ThemeColors.greyDark,
                      child:
                          Icon(Icons.shopping_basket, color: ThemeColors.yellow, size: 30),
                    ),
                    Expanded(
                      child: SizedBox.shrink(),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ThemeColors.greyDark,
                      child:
                          Icon(Icons.verified_user_outlined, color: ThemeColors.yellow, size: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ThemeColors.greyDark,
                      child:
                          Icon(Icons.person, color: ThemeColors.yellow, size: 30),
                    )
                  ]),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ThemeButton(
                          backgroundColor: ThemeColors.yellow,
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 38,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          text: 'Global Gym',
                          textColor: ThemeColors.black,
                        ),
                        ThemeButton(
                          backgroundColor: ThemeColors.greyDark,
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 38,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          text: 'Global Gym',
                          textColor: ThemeColors.white,
                        ),
                      ]),
                    const Expanded(child: SizedBox.shrink(),),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LightText('Currently doing', size: 13, color: ThemeColors.grey,),
                          const SizedBox(height: 4),
                          const SemiBoldText('DB Bulgarian Split squat', size: 11,),
                          const SizedBox(height: 4),
                          Row(children: const[
                            RegularText('2 reps', size: 12, color: ThemeColors.yellow,),
                            SizedBox(width: 10,),
                            RegularText('85 libs', size: 12, color: ThemeColors.yellow,)
                            ],)
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    
                    Padding(
                      padding: const EdgeInsets.only(bottom:35.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child:  BackdropFilter(
                          filter:  ImageFilter.blur(sigmaX: 8.0, sigmaY: 15.0),
                          child:  Container(
                          
                            height: 140.0,
                            decoration:  BoxDecoration(
                              color: Color.fromARGB(255, 46, 30, 9).withOpacity(0.65),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:   Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [RegularText('Started 45 min ago', size: 12,), LightText('Accra, Ghana', size: 12, color: ThemeColors.grey,)],),
                                Row(mainAxisAlignment: MainAxisAlignment.start, children: [BoldText('@MRKWAKUAMOH')],),
                                BoldText('🙌 👊  😤 💪 💪 💪 '),
                                RegularText('Send encouragement and  give @MRKWAKUAMOH 50 VP!', size: 10, color: ThemeColors.grey,)
                              ],),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
