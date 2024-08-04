import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                onPressed: () {print("add functionality lmao");},
                child: Text(
                  'DEV TOOL: CLEAR QUESTION MEMORY'
                ),
            ),
            Divider(
              height: 30,
              color: Colors.grey[800],
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                  },
                child: Text('CLOSE SETTINGS')
            )
          ],
        ),
      ),
    );
  }
}