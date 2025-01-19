import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/welcome/difficulty_selection_screen.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/controllers/question_controller.dart';

double dividerHeight = 35;

class CategorySelectionScreen extends StatelessWidget {
  const CategorySelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController());

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
                  'CHOOSE QUESTION CATEGORY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.all(9),
                itemCount: questionController.categoryList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: width / 9,
                    child: ElevatedButton(
                      child: Text(questionController.categoryList[index]),
                      onPressed: () {
                        questionController.setCategory(questionController.categoryList[index]);
                        Get.to(() => const DifficultySelectionScreen());
                      },
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget customButton(BuildContext context, String buttonText, String category) {
  QuestionController controller;
  if (!Get.isRegistered<QuestionController>()) {
    //get.put is a function that lets us access the same instance of our controller class in any file. basically put get.put in any file you want to access the difficulty value.
    controller = Get.put(QuestionController());
  } else {
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
