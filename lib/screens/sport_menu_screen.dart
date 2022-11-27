import 'package:fitness_app_design/data/sports_data.dart';
import 'package:fitness_app_design/data/util/theme_colors.dart';
import 'package:fitness_app_design/data/util/theme_text.dart';
import 'package:fitness_app_design/widgets/theme_button.dart';
import 'package:fitness_app_design/widgets/theme_icon.dart';
import 'package:flutter/material.dart';

class SportMenuScreen extends StatelessWidget {
  const SportMenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Center(child: ThemeIcon(width: 20, height: 20, icon: const Icon(Icons.chevron_left_outlined, size: 15, color: Color(0xffecb169),), iconBorderColor: const Color(0xffecb169),)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'App Logo Here',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w800, color: Colors.white),
        ),
      ),
      backgroundColor:  Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:40, right: 40, top: 25, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BoldText(
                  'MY',size: 35,),
                const BoldText(
                  'SPORTS ARE', size: 35,),
                const SizedBox(
                  height: 25,
                ),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: List.generate(sportData.length, (index) {
                    return TextButton(
                        onPressed: () {
                          return;
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: index == 0
                                ? ThemeColors.yellow
                                :  ThemeColors.greyDark,
                            minimumSize: const Size(35, 35),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  sportData[index]['icon'],
                                  size: 40,
                                  color: index == 0
                                      ? Colors.black
                                      : const Color(0xffecb169),
                                ),
                                Text(
                                  sportData[index]['menu_name'],
                                  style: TextStyle(
                                      color: index == 0
                                          ? Colors.black
                                          : Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                              ],
                            ))));
                  }),
                ),
                const SizedBox(
                  height: 50,
                ),
                ThemeButton(
                  onTap: (){
                    Navigator.pushNamed(context, '/picture');
                  },
                  icon: const Icon(Icons.chevron_right_sharp,
                      size: 15, color:  Color.fromARGB(255, 216, 216, 216)),
                  text: 'Continue',
                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
