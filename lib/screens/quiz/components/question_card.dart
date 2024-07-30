import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';
import 'package:geography_trivia_app/models/questions.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    // it means we have to pass this
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());

    //this place actually displays all the questions.
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
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

          SizedBox(height: kDefaultPadding / 2),
          //the ... represents each element in a collection individually
          //this line generates a generically-typed list out of the list of question options, then represents them individually with ...
          ...List.generate(
            question.options.length,
                (index) => QuizOption(
              index: index,
              text: question.options[index],
              //you can add multiple commands in a => if you put them in {}
              press: () => {_controller.checkAns(question, index)}
            ),
          ),
        ],
      ),
    );
  }
}