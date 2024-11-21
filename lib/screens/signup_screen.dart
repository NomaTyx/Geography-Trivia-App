import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geography_trivia_app/controllers/leaderboard_controller.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';
import 'package:get/get.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    LeaderboardController lbController;

    if(!Get.isRegistered<LeaderboardController>()) {
      //get.put is a function that lets us access the same instance of our controller class in any file. basically put get.put in any file you want to access the difficulty value.
      lbController = Get.put(LeaderboardController());
    }
    else{
      //get.find lets us find a controller of the given type.
      lbController = Get.find<LeaderboardController>();
    }

    String email = '', password = '';
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
                'Sign up!',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Divider(
              height: 30,
              color: Colors.grey[800],
            ),
            TextField(
              decoration: InputDecoration(hintText: 'enter your email address'),
              onChanged: (String value) {
                email = value;
              },
            ),
            Divider(
              height: 30,
              color: Colors.grey[800],
            ),
            TextField(
              //specifically not asking them to confirm a password because im not a PUSSY (also idk how to do it)
              decoration: InputDecoration(hintText: 'enter your desired password'),
              onChanged: (String value) {
                password = value;
              },
            ),
            Divider(
              height: 80,
              color: Colors.grey[800],
            ),
            ElevatedButton(
                onPressed: () {lbController.signUp(email, password);},
                child: Text("Create account"))
          ],
        ),
      ),
    );
  }
}
