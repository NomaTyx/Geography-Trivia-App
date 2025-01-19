import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:get/get.dart';

class NoMoreQuestionsScreen extends StatelessWidget {
  const NoMoreQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Geography App"),
      //   centerTitle: true,
      //   backgroundColor: Colors.purple,
      //   elevation: 0.0,
      // ),
      body: Padding(
        padding:
            EdgeInsets.fromLTRB(width * 0.07, height * 0.1, width * 0.07, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/toge.jpg'),
                radius: 40.0,
              ),
            ),
            const Center(
              child: Text(
                'Somehow you\'ve run out of questions. Come back later in case we add more!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const HomeScreen());
                  },
                  child: const Text('BACK TO HOME SCREEN')),
            )
          ],
        ),
      ),
    );
  }
}
