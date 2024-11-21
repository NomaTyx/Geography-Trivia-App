import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;

// Sign Up
Future<void> signUp(String email, String password) async {
  try {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  } catch (e) {
    print("Error: $e");
  }
}