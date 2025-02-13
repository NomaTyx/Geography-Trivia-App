import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/no_more_questions_screen.dart';
import 'package:geography_trivia_app/screens/quiz/quiz_screen.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';

import '../../controllers/ui_components.dart';

double dividerHeight = 35;

class DifficultySelectionScreen extends StatelessWidget {
  DifficultySelectionScreen({super.key});

  QuestionController questionController = Get.find<QuestionController>();

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
          child: SizedBox(
            height: height * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: headerText(context, 'CHOOSE QUESTION DIFFICULTY', 35.0),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(9),
                  itemCount: questionController.difficultyList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: height / 15,
                      child: longButton(
                        context,
                        questionController.difficultyList[index],
                        () {
                          questionController.setDifficulty(index + 1);
                          questionController.beginQuiz();
                          if (questionController.findValidQuestion() == -1) {
                            Get.to(() => const NoMoreQuestionsScreen());
                          } else {
                            Get.to(() => const QuizScreen());
                          }
                        },
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => SizedBox(height: height / 50),
                )
              ],
            ),
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
