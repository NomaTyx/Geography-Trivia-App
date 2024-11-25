import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class LeaderboardController extends GetxController with GetSingleTickerProviderStateMixin {
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> get onAuthStateChanged => auth.authStateChanges();

  User? user;

  Future<void> signUp(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print("Error: signup failed");
    }
  }

  Future<void> logIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print("Error: login failed");
    }
  }

  Future<void> updateDisplayName(String desiredName) async {
    try {
      await auth.currentUser?.updateDisplayName(desiredName);
    } catch (e) {
      print("Error: updatedisplayname failed");
    }
  }

  Future<String?> getCurrentUID() async {
    if(auth.currentUser != null)
      {
        return auth.currentUser!.uid;
      }
  }
}