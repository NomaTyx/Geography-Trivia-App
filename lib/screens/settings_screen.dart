import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geography_trivia_app/controllers/auth_services.dart';
import 'package:geography_trivia_app/controllers/player_data_controller.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController()) ?? Get.find<QuestionController>();
    AuthServices authServices = Get.put(AuthServices()) ?? Get.find<AuthServices>();
    PlayerDataController playerDataController = Get.put(PlayerDataController()) ?? Get.find<PlayerDataController>();

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
                radius: 80.0,
              ),
            ),
            Divider(
              height: 30,
              color: Colors.grey[800],
            ),
            const Center(
              child: Text(
                'SETTINGS',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {questionController.clearStorage();},
                child: const Text(
                  'DEV TOOL: CLEAR QUESTION MEMORY'
                ),
            ),
            Divider(
              height: 30,
              color: Colors.grey[800],
            ),
            ElevatedButton(
              onPressed: () {playerDataController.resetScore();},
              child: const Text(
                  'DEV TOOL: RESET TOTAL SCORE.'
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                  },
                child: const Text('CLOSE SETTINGS')
            ),
            ElevatedButton(
                onPressed: () {
                  playerDataController.addUser();
                  },
                child: const Text('add placeholder user')
            ),
            ElevatedButton(
                onPressed: () async {
                  print(await playerDataController.deviceExists());
                },
                child: const Text('does usergetting work')
            ),
            ElevatedButton(
                onPressed: () {
                  print(playerDataController.deviceID);
                  },
                child: const Text('show device id')
            ),
            ElevatedButton(
                onPressed: () {
                  print(playerDataController.playerName);
                },
                child: const Text('show player name')
            ),
          ],
        ),
      ),
    );
  }
}