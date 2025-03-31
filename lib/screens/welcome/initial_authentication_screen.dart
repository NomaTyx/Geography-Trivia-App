import 'package:flutter/material.dart';
import 'package:geography_trivia_app/controllers/ui_components.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:get/get.dart';

import '../../controllers/player_data_controller.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlayerDataController playerDataController = Get.put(PlayerDataController()) ?? Get.find<PlayerDataController>();
    String name = 'timmy';

    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(width * 0.07, height * 0.1, width * 0.07, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(child: headerText(context, 'Hello! Please enter your name.', 30.0)),
            Spacer(),
            TextField(
              decoration: InputDecoration(hintText: "Name"),
              onChanged: (String value) {
                name = value;
              },
            ),
            Spacer(),
            shortButton(
              context,
              'Done',
              () => {
                if (name != '')
                  {playerDataController.setPlayerName(name), Get.to(RegionScreen())}
                else
                  {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('I\'m sure you have a name'),
                        content: const Text('If you don\'t have a name, come up with one.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                  }
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class RegionScreen extends StatelessWidget {
  RegionScreen({super.key});

  final List<String> regionList = <String>[
    'Africa',
    'Asia',
    'Europe',
    'North America',
    'Oceania',
    'South America',
    'Antarctica'
  ];
  final PlayerDataController playerDataController = Get.put(PlayerDataController()) ?? Get.find<PlayerDataController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(width * 0.07, height * 0.1, width * 0.07, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(child: headerText(context, 'And now enter your region.', 30.0)),
            Spacer(),
            SizedBox(
            height: height * 0.7,
              child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.all(9),
                itemCount: regionList.length,
                itemBuilder: (BuildContext context, int index) {
                  return longButton(context, regionList[index], () {
                      if (regionList[index] != "Antarctica") {
                        playerDataController.setPlayerRegion(regionList[index]);
                        playerDataController.addUser();
                        Get.to(HomeScreen());
                      } else {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Nice try, bucko'),
                            content: const Text('You don\'t live in antarctica'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    }
                  );
                },
                separatorBuilder: (BuildContext context, int index) => SizedBox(height: height / 50),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
