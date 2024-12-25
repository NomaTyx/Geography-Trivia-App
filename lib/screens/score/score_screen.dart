import 'package:flutter/material.dart';
import 'package:geography_trivia_app/constants.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';
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
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              const Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(),
              Text(
                "You got $score points!",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(),
              Text(
                "Your total score is ${playerDataController.playerScoreTotal} points!",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(flex: 3),
              ElevatedButton(onPressed: () {Get.to(const HomeScreen());}, child: const Text('RETURN TO HOME SCREEN')),
            ],
          ),
        ],
      ),
    );
  }
}