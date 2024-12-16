import 'package:flutter/material.dart';
import 'package:geography_trivia_app/controllers/player_data_controller.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:get/get.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlayerDataController playerDataController = Get.put(PlayerDataController()) ?? Get.find<PlayerDataController>();

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
            Container(
              height: 500,
              child:ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.all(9),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 30,
                    // row with rank, name, region, total score
                    child: Text("placeholder " + (index + 1).toString()),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const HomeScreen());
                },
                child: const Text('BACK TO HOME SCREEN')
            ),
            ElevatedButton(
                onPressed: () {
                  //playerDataController.GetTopPlayers(10);
                },
                child: const Text('test top 10 list')
            )
          ],
        ),
      ),
    );
  }
}
