import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/settings_screen.dart';
import 'package:get/get.dart';
import '../../controllers/question_controller.dart';
import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Flutter shows the back button automatically, this line disables it
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Get.to(() => SettingsScreen());
              },
              icon: Icon(Icons.settings),
            ),
            TextButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
          ],
        ),
      ),
      body: Body(),
    );
  }
}