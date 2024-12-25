import 'dart:math';

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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("Rank", textAlign: TextAlign.center ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text("Name", textAlign: TextAlign.center),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text("Score", textAlign: TextAlign.center)
                  ),
                  Expanded(flex: 2, child: Text("Region", textAlign: TextAlign.center)),
                ]
            ),
            SizedBox(
              height: 500,
              child:ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.all(15),
                itemCount: min(playerDataController.topPlayersList.length, 10),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 30,
                      // row with rank, name, region, total score
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text("#${(index + 1).toString()}", textAlign: TextAlign.center),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(playerDataController.topPlayersList[index]["Name"], textAlign: TextAlign.center),
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(playerDataController.topPlayersList[index]["Score"].toString(), textAlign: TextAlign.center)
                        ),
                        Expanded(flex: 2, child: Text(playerDataController.topPlayersList[index]["Region"], textAlign: TextAlign.center)),
                      ]
                    )
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
                onPressed: () async {
                  await playerDataController.FindTopPlayers(10);
                },
                child: const Text('test top 10 list')
            )
          ],
        ),
      ),
    );
  }
}
