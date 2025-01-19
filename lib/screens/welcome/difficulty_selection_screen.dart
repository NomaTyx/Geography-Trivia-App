import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/no_more_questions_screen.dart';
import 'package:geography_trivia_app/screens/quiz/quiz_screen.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';

double dividerHeight = 35;

class DifficultySelectionScreen extends StatelessWidget {
  const DifficultySelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(width * 0.07, height * 0.1, width * 0.07, 0),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/originalAssets/southAmericaBackground.png'),
              //fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
              ),

              //PLAY BUTTON
              customButton(context, 'EASY', 1),
              Divider(
                height: dividerHeight,
              ),

              //SETTINGS BUTTON
              customButton(context, 'MEDIUM', 2),
              Divider(
                height: dividerHeight,
              ),

              //LEADERBOARD BUTTON
              customButton(context, 'HARD', 3),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customButton(BuildContext context, String buttonText, int difficultyValue) {
  QuestionController controller = Get.find<QuestionController>();
  return SizedBox(
    width: 900,
    height: 75,
    child: ElevatedButton(
      onPressed: () {
        controller.setDifficulty(difficultyValue);
        controller.beginQuiz();
        if (controller.findValidQuestion() == -1) {
          Get.to(() => const NoMoreQuestionsScreen());
        } else {
          Get.to(() => const QuizScreen());
        }
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
