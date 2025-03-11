import 'package:geography_trivia_app/controllers/ui_components.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: longButton(context, "I'm connected to the internet!", onPress),
    );
  }
  
  
}