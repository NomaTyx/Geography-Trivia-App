import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/leaderboard_screen.dart';
import 'package:geography_trivia_app/screens/settings_screen.dart';
import 'package:geography_trivia_app/screens/welcome/category_selection_screen.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/controllers/ui_components.dart';

double dividerHeight = 35;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //local variables go here i thinks
    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(width * 0.07, height * 0.1, width * 0.07, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: headerText(context, 'International IQ', 45.0)
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, height * 0.05, 0, height * 0.05),
                  child: Transform(
                    //transform measures things in radians for some godforsaken reason
                      transform: Matrix4.rotationZ(-3.1415926535897932 / 8),
                      alignment: FractionalOffset.center,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/originalAssets/globe.png'),
                        radius: 120.0,
                      ))),
            ),
            Center(
              child: SizedBox(
                width: width * 0.8,
                height: height * 0.35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    longButton(context, 'PLAY', () {
                      print(height);
                      Get.to(() => CategorySelectionScreen());
                    }),
                    longButton(context, 'SETTINGS', () {
                      Get.to(() => SettingsScreen());
                    }),
                    longButton(context, 'LEADERBOARD', () {
                      Get.to(() => LeaderboardScreen());
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
