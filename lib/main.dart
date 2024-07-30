//https://www.youtube.com/watch?v=Nhy0VWAMsFU this is the tutorial i followed
//i am a hack fraud and the whole scaffolding of the app is from this tutorial.

import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:geography_trivia_app/screens/quiz/quiz_screen.dart';
import 'package:get/get.dart';

import 'screens/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}