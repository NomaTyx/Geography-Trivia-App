import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

// Sign Up
Future<void> signUp(String email, String password) async {
  try {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  } catch (e) {
    print("Error: $e");
  }
}