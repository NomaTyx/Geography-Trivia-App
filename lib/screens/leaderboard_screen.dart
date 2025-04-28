import 'dart:math';
import 'package:flutter/material.dart';
import 'package:geography_trivia_app/controllers/player_data_controller.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/controllers/ui_components.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlayerDataController playerDataController = Get.put(PlayerDataController()) ?? Get.find<PlayerDataController>();

    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(width * 0.07, height * 0.01, width * 0.07, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(flex: 3),
            Center(child: headerText(context, "LEADERBOARD", 35)),
            Spacer(flex: 2),
            const Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Expanded(
                flex: 1,
                child: Text("Rank", textAlign: TextAlign.center),
              ),
              Expanded(
                flex: 1,
                child: Text("Name", textAlign: TextAlign.center),
              ),
              Expanded(flex: 1, child: Text("Score", textAlign: TextAlign.center)),
              Expanded(flex: 2, child: Text("Region", textAlign: TextAlign.center)),
            ]),
            SizedBox(
              child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.all(15),
                itemCount: min(playerDataController.topPlayersList.length, 10),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                      height: height * 30 / 1000,
                      // row with rank, name, region, total score
                      child: Row(children: [
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
                            child: Text(playerDataController.topPlayersList[index]["Score"].toString(),
                                textAlign: TextAlign.center)),
                        Expanded(
                            flex: 2,
                            child: Text(playerDataController.topPlayersList[index]["Region"],
                                textAlign: TextAlign.center)),
                      ]));
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              ),
            ),
            Spacer(flex: 1),
            longButton(context, 'BACK TO HOME SCREEN', () {Get.to(() => const HomeScreen());}),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
