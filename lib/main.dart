//https://www.youtube.com/watch?v=Nhy0VWAMsFU this is the tutorial i followed
//i am a hack fraud and the whole scaffolding of the app is from this tutorial.

import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:geography_trivia_app/screens/welcome/initial_authentication_screen.dart';
import 'package:get/get.dart';
import 'controllers/player_data_controller.dart';
import 'firebase_options.dart';

bool currentDeviceExists = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  PlayerDataController playerDataController = Get.put(PlayerDataController()) ?? Get.find<PlayerDataController>();
  await playerDataController.findDeviceID();
  currentDeviceExists = await playerDataController.deviceExists();
  //make a public leaderboardSize variable?
  await playerDataController.FindTopPlayers(10);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomeController(),
    );
  }
}

class HomeController extends StatelessWidget {
  const HomeController({super.key});

  @override
  Widget build(BuildContext context) {
    return currentDeviceExists ? HomeScreen() : NameScreen();
  }
}