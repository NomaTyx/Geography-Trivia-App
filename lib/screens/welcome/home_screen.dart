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
    print("hello");
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Geography App"),
      //   centerTitle: true,
      //   backgroundColor: Colors.purple,
      //   elevation: 0.0,
      // ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 90.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Divider(
              height: 30,
            ),
            const Center(
              child: Text(
                'International IQ',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Divider(
              height: 75
            ),

            //PLAY BUTTON
            titleButton(context, 'PLAY', const CategorySelectionScreen()),
            Divider(
              height: dividerHeight
            ),

            //SETTINGS BUTTON
            titleButton(context, 'SETTINGS', const SettingsScreen()),
            Divider(
              height: dividerHeight
            ),
            //LEADERBOARD BUTTON
            titleButton(context, 'LEADERBOARD', const LeaderboardScreen()),
            Divider(
                height: dividerHeight
            ),
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/originalAssets/globe.png'),
                radius: 120.0,
              ),
            ),
          ],

        ),
      ),
    );
  }
}



Widget titleButton(BuildContext context, String buttonText, onPressMethod) {
  return SizedBox(
    width: 900,
    height: 75,
    child: ElevatedButton(
      onPressed: () {
        Get.to(onPressMethod);
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