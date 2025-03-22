import 'package:flutter/material.dart';
import 'package:geography_trivia_app/controllers/ui_components.dart';
import 'package:geography_trivia_app/screens/settings_screen.dart';
import 'package:get/get.dart';
import '../../controllers/question_controller.dart';
import 'quizScreenComponents/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.find<QuestionController>();

    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

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
                Get.to(() => const SettingsScreen());
              },
              icon: const Icon(Icons.settings),
            ),
            SizedBox(height: height / 24, child: shortButton(context, "Skip", () => {controller.skipQuestion()}))
          ],
        ),
      ),
      body: const Body(),
    );
  }
}