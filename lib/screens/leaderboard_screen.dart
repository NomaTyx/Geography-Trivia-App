import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:geography_trivia_app/controllers/leaderboard_controller.dart';
import 'package:get/get.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

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
                SignInDialog(context);
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

  Future<void> SignInDialog(BuildContext context)
  {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) => const AlertDialog(
        title: Text('sign in please!'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: 'enter your email'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'enter your desired password'),
              )
            ],
          ),
        )
      )
    );
  }
}
