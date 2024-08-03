import 'package:flutter/material.dart';
import 'package:geography_trivia_app/constants.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';
import 'package:geography_trivia_app/screens/quiz/components/progress_bar.dart';
import 'package:geography_trivia_app/screens/score/score_screen.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'dart:math';

import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So that we have access to our controller
    //get.put is a function that lets us access the same instance of our controller class in any file. basically put get.put in any file you want to access the difficulty value.
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:
                EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Obx(
                          () => Text.rich(
                        TextSpan(
                          text:
                          "Question ${_questionController.questionNumber.value}",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(color: kSecondaryColor),
                          children: [
                            //only keeping this in here to remind myself that i can have it in there.
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Done button!
                  Container(
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {Get.to(() => ScoreScreen());},
                        child: Text("Done"),
                    ),
                  ),
                ],
              ),
              Divider(thickness: 0),
              SizedBox(height: kDefaultPadding),
              //this is where the questions are turned into pages
              Expanded(
                child: PageView.builder(
                  // disables swiping to the next question
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  //itemCount: _questionController.questionList.length,

                  //this section creates a new page on the fly whenever it loads a page (I HOPE)
                  itemBuilder: (context, index) {
                    if(_questionController.selectedDifficulty == 1) {
                      print("The difficulty is easy!");
                    }
                    else if (_questionController.selectedDifficulty == 2) {
                      print("the difficulty is medium!");
                    }
                    else {
                      print("The difficulty is hard!");
                    }
                    //TODO: check if there are any questions of a given difficulty in the list.
                    while(true) {
                      print("iterating");
                      var pickedQuestion = _questionController.questionList[Random()
                          .nextInt(
                          _questionController.questionList.length)];
                      print("The picked question's difficulty is ${pickedQuestion.difficulty}");
                      if (pickedQuestion.difficulty == _questionController.selectedDifficulty) {
                        return QuestionCard(
                            question: pickedQuestion);
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}