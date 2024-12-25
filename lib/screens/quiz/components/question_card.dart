import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';
import 'package:geography_trivia_app/question_list.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    // it means we have to pass this
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.find<QuestionController>();

    //this place actually displays all the questions.
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),

      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: kBlackColor),
          ),

          const SizedBox(height: kDefaultPadding / 2),
          //the ... represents each element in a collection individually
          //this line generates a generically-typed list out of the list of question options, then represents them individually with '...'
          ...List.generate(
            question.options.length,
                (index) => QuizOption(
              index: index,
              text: question.options[index],
              //you can add multiple commands in a => if you put them in {}
              press: () => {controller.checkAns(question, index)}
            ),
          ),
        ],
      ),
    );
  }
}