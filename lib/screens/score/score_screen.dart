import 'package:flutter/material.dart';
import 'package:geography_trivia_app/constants.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';
import 'package:geography_trivia_app/controllers/ui_components.dart';
import 'package:geography_trivia_app/screens/welcome/home_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import '../../controllers/player_data_controller.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {

    QuestionController questionController = Get.find<QuestionController>();
    PlayerDataController playerDataController = Get.put(PlayerDataController()) ?? Get.find<PlayerDataController>();

    int score = questionController.numOfCorrectAns * questionController.selectedDifficulty;

    playerDataController.addToPlayerScore(score);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              const Spacer(flex: 3),
              headerText(context, "You got $score points!", 35.0),
              const Spacer(),
              headerText(context,  "Total score: ${playerDataController.playerScoreTotal}", 30.0),
              const Spacer(flex: 2),
              longButton(context, "Return to Home Screen", () {Get.to(const HomeScreen());}),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}