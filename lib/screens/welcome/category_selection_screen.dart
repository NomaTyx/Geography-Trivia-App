import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/welcome/difficulty_selection_screen.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';

double dividerHeight = 35;

class CategorySelectionScreen extends StatelessWidget {
  const CategorySelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
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
                'CHOOSE QUESTION CATEGORY',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Divider(
                    height: 75,
                    color: Colors.grey[800],
                  ),

                  //PLAY BUTTON
                  customButton(context, 'cat 1', 1),
                  Divider(
                    height: dividerHeight,
                    color: Colors.grey[800],
                  ),

                  //SETTINGS BUTTON
                  customButton(context, 'cat 2', 2),
                  Divider(
                    height: dividerHeight,
                    color: Colors.grey[800],
                  ),

                  //LEADERBOARD BUTTON
                  customButton(context, 'cat 3', 3),
                ]
              )
            )

          ],
        ),
      ),
    );
  }
}

Widget customButton(BuildContext context, String buttonText, int category) {
  QuestionController controller;
  if(!Get.isRegistered<QuestionController>()) {
    //get.put is a function that lets us access the same instance of our controller class in any file. basically put get.put in any file you want to access the difficulty value.
    controller = Get.put(QuestionController());
  }
  else{
    //get.find lets us find a controller of the given type.
    controller = Get.find<QuestionController>();
  }
  return SizedBox(
    width: 900,
    height: 75,
    child: ElevatedButton(
      onPressed: () {
        controller.setCategory(category);
        Get.to(() => const DifficultySelectionScreen());
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