//https://www.youtube.com/watch?v=Nhy0VWAMsFU this is the tutorial i followed
//i am a hack fraud and the whole scaffolding of the app is from this tutorial.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/settings_screen.dart';
import 'package:geography_trivia_app/screens/signup_screen.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:geography_trivia_app/screens/welcome/initial_authentication_screen.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
import 'package:geography_trivia_app/controllers/auth_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  AuthServices authServices = Get.put(AuthServices()) ?? Get.find<AuthServices>();

  authServices.findDeviceID();

  runApp(const MyApp());

  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
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
    AuthServices authServices = Get.put(AuthServices());
    return authServices.isLoggedIn() ? HomeScreen() : NameScreen();
  }
}