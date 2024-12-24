import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/question_list.dart';
import 'package:geography_trivia_app/screens/score/score_screen.dart';
import 'package:get_storage/get_storage.dart';

// We use get package for our state management

class QuestionController extends GetxController with GetSingleTickerProviderStateMixin {

  //animate progressbar
  late AnimationController _animationController;
  late Animation _animation;
  // so that we can access our animation outside
  Animation get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController;

  final List<Question> _questions = sample_data
      .map(
        (question) => Question(
        id: question['id'],
        question: question['question'],
        options: question['options'],
        answer: question['answer_index'],
        difficulty: question['difficulty'],
        category: question['category']),
  )
      .toList();
  List<Question> get questionList => _questions;

  late RxList<Question> _answeredQuestionsList = <Question>[].obs;
  List<Question> get answeredQuestions => _answeredQuestionsList;

  bool _isAnswered = false;
  bool get hasAnsweredCurrentQuestion => _isAnswered;

  late int _selectedDifficulty;
  int get selectedDifficulty => _selectedDifficulty;

  late int _selectedCategory;
  int get selectedCategory => _selectedCategory;

  late int _correctAns;
  int get correctAnswer => _correctAns;

  late int _selectedAns;
  int get selectedAnswer => _selectedAns;

  // rxints are like events, I think???? https://pub.dev/documentation/flutter_super/latest/flutter_super/RxInt-class.html
  final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;

  // called immediately after the widget is allocated memory
  @override
  void onInit() {
    _questions.shuffle(Random());

    //probably do some weird thign like making a temporary list and then casting back and forth
    //sets the local variables equal to the stored value if it exists
    if(GetStorage().hasData("answeredQuestionsList")) {
      _answeredQuestionsList.value = GetStorage().read("answeredQuestionsList").cast<Question>();
    }

    //every time answeredQuestionsList changes, this will be called.
    ever(_answeredQuestionsList, (_) {
      GetStorage().write('answeredQuestionsList', _answeredQuestionsList);
      print("written to storage");
    });

    super.onInit();
  }

  void beginQuiz() {
    try {
      _animationController =
          AnimationController(duration: const Duration(seconds: 60), vsync: this);
      _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
        ..addListener(() {
          // update like setState
          update();
        });
    }
    catch (e) {
      print("animationController already exists");
    }

    // start our animation
    // Once 60s is completed go to the next qn
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
  }

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) {
      _numOfCorrectAns++;
      _answeredQuestionsList.add(question);
    }

    answeredQuestions.add(question);

    // It will stop the counter
    _animationController.stop();
    update();

    // Once user select an ans after 3s it will go to the next qn
    Future.delayed(const Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    _isAnswered = false;
    _pageController.nextPage(duration: const Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
    _animationController.reset();


    //if the user has somehow answered the last question
    if(findValidQuestion() == -1) {
      Get.to(() => const ScoreScreen());
    }

    // Then start it again
    // Once timer is finish go to the next qn
    _animationController.forward().whenComplete(nextQuestion);
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  void setDifficulty(int difficultyToSet) {
    _selectedDifficulty = difficultyToSet;
    print("The difficulty has been set to $difficultyToSet");
  }

  void setCategory(int categoryToSet) {
    _selectedCategory = categoryToSet;
    print("The category has been set to $categoryToSet");

    resetRoundScore();
  }

  void resetRoundScore() {
    _numOfCorrectAns = 0;
  }

  //todo redo this function so that on startup it makes a list of all the questions the user has already answered.
  int findValidQuestion() {
    for (int i = 0; i < questionList.length; i++) {
      var currentQuestion = questionList[i];
      if (currentQuestion.difficulty == selectedDifficulty && currentQuestion.category == selectedCategory) {
        if (!answeredQuestions.contains(currentQuestion)) {
          return i;
        }
      }
    }
    return -1;
  }

  void clearStorage() {
    _answeredQuestionsList.clear();
  }
}