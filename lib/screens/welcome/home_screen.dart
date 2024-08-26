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
    return Scaffold(
      backgroundColor: Colors.grey[800],
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
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/toge.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 30,
              color: Colors.grey[800],
            ),
            const Center(
              child: Text(
                'GEOGRAPHY APP',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Divider(
              height: 75,
              color: Colors.grey[800],
            ),

            //PLAY BUTTON
            titleButton(context, 'PLAY', const CategorySelectionScreen()),
            Divider(
              height: dividerHeight,
              color: Colors.grey[800],
            ),

            //SETTINGS BUTTON
            titleButton(context, 'SETTINGS', const SettingsScreen()),
            Divider(
              height: dividerHeight,
              color: Colors.grey[800],
            ),

            //LEADERBOARD BUTTON
            titleButton(context, 'LEADERBOARD', const LeaderboardScreen()),
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