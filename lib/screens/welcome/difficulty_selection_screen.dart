import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/leaderboard_screen.dart';
import 'package:geography_trivia_app/screens/quiz/quiz_screen.dart';
import 'package:geography_trivia_app/screens/settings_screen.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';

double dividerHeight = 35;

class DifficultySelectionScreen extends StatelessWidget {
  const DifficultySelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 90.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/toge.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 30,
              color: Colors.grey[800],
            ),
            const Center(
              child: Text(
                'CHOOSE QUESTION DIFFICULTY',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Divider(
              height: 75,
              color: Colors.grey[800],
            ),

            //PLAY BUTTON
            customButton(context, 'EASY', 1),
            Divider(
              height: dividerHeight,
              color: Colors.grey[800],
            ),

            //SETTINGS BUTTON
            customButton(context, 'MEDIUM', 2),
            Divider(
              height: dividerHeight,
              color: Colors.grey[800],
            ),

            //LEADERBOARD BUTTON
            customButton(context, 'HARD', 3),
          ],
        ),
      ),
    );
  }
}

Widget customButton(BuildContext context, String buttonText, int difficultyValue) {
  QuestionController _controller = Get.find<QuestionController>();
  return Container(
    width: 900,
    height: 75,
    child: ElevatedButton(
      onPressed: () {
        _controller.setDifficulty(difficultyValue);
        _controller.beginQuiz();
        Get.to(() => QuizScreen());
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.grey),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          letterSpacing: 2.0,
        ),
      ),
    ),
  );
}