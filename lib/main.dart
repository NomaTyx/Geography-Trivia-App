//https://www.youtube.com/watch?v=Nhy0VWAMsFU this is the tutorial i followed
//i am a hack fraud and the whole scaffolding of the app is from this tutorial.

import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}