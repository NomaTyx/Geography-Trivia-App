import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class LeaderboardController extends GetxController with GetSingleTickerProviderStateMixin {
  // Sign Up
  Future<void> signUp(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print("Error: youre a stinky head");
    }
  }
}