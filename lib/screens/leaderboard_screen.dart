import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/signup_screen.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:geography_trivia_app/controllers/leaderboard_controller.dart';
import 'package:get/get.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
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
                'LEADERBOARD',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => SignUpScreen());
              },
              child: const Text('SIGN IN')
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const HomeScreen());
                },
                child: const Text('BACK TO HOME SCREEN')
            )
          ],
        ),
      ),
    );
  }
}
