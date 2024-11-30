import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/signup_screen.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/controllers/auth_services.dart';

import '../../controllers/player_data_controller.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlayerDataController playerDataController = Get.put(PlayerDataController()) ?? Get.find<PlayerDataController>();
    String name = '';

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
                radius: 80.0,
              ),
            ),

            Divider(
              height: 30,
              color: Colors.grey[800],
            ),

            const Center(
              child:
              Text('Hi! Please enter your name.',
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
              decoration: InputDecoration(hintText: "Name"),
              onChanged: (String value) {
                name = value;
              },
            ),

            Divider(
              height: 30,
              color: Colors.grey[800],
            ),

            ElevatedButton(
                onPressed: () => {
                  if(name != '') {
                    playerDataController.setPlayerName(name),
                    Get.to(RegionScreen())
                  }
                  else {
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

                child: Text("Done"))
          ],
        ),
      ),
    );
  }
}

class RegionScreen extends StatelessWidget {
  RegionScreen({super.key});
  final List<String> regionList = <String>['Africa', 'Asia', 'Europe', 'North America', 'Oceania', 'South America', 'Antarctica'];
  PlayerDataController playerDataController = Get.put(PlayerDataController()) ?? Get.find<PlayerDataController>();

  @override
  Widget build(BuildContext context) {
    String region = '';
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
                'And now pick your region.',
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
            ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.all(9),
                itemCount: regionList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    child: ElevatedButton(
                      child: Text('${regionList[index]}'),
                      onPressed: () {
                        if(regionList[index] != "Antarctica") {
                          playerDataController.setPlayerRegion(regionList[index]);
                          playerDataController.addUser();
                          Get.to(HomeScreen());
                        }
                        else {
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
                      },
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
            )
          ],
        ),
      ),
    );
  }
}