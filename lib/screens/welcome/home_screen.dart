import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/leaderboard_screen.dart';
import 'package:geography_trivia_app/screens/settings_screen.dart';
import 'package:geography_trivia_app/screens/welcome/category_selection_screen.dart';
import 'package:get/get.dart';

double dividerHeight = 35;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //local variables go here i thinks
    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    print("width: $width, height: $height");

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Geography App"),
      //   centerTitle: true,
      //   backgroundColor: Colors.purple,
      //   elevation: 0.0,
      // ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(width * 0.07, height * 0.1, width * 0.07, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                'International IQ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Acme',
                  color: Colors.blue,
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, height * 0.05, 0, height * 0.05),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/originalAssets/globe.png'),
                    radius: 120.0,
                  )
              ),
            ),
            Center(
              child: SizedBox(
                width: width * 0.8,
                height: height * 0.35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    titleButton(context, 'PLAY', const CategorySelectionScreen()),
                    titleButton(context, 'SETTINGS', const SettingsScreen()),
                    titleButton(context, 'LEADERBOARD', const LeaderboardScreen()),
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

Widget titleButton(BuildContext context, String buttonText, onPressScreen) {
  return SizedBox(
    width: 900,
    height: 75,
    child: ElevatedButton(
      onPressed: () {
        Get.to(onPressScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.grey),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          letterSpacing: 2.0,
        ),
      ),
    ),
  );
}
