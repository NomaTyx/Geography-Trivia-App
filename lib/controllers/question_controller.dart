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
  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = sample_data
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
  List<Question> get questionList => this._questions;

  late RxList<Question> _answeredQuestionsList = <Question>[].obs;
  List<Question> get answeredQuestions => this._answeredQuestionsList;

  bool _isAnswered = false;
  bool get hasAnsweredCurrentQuestion => this._isAnswered;

  late int _selectedDifficulty;
  int get selectedDifficulty => this._selectedDifficulty;

  late int _selectedCategory;
  int get selectedCategory => this._selectedCategory;

  late int _correctAns;
  int get correctAnswer => this._correctAns;

  late int _selectedAns;
  int get selectedAnswer => this._selectedAns;

  // rxints are like events, I think???? https://pub.dev/documentation/flutter_super/latest/flutter_super/RxInt-class.html
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  RxInt _totalScore = 0.obs;
  RxInt get totalScore => this._totalScore;

  // called immediately after the widget is allocated memory
  @override
  void onInit() {
    _questions.shuffle(Random());

    //sets the local variables equal to the stored value if it exists
    if(GetStorage().hasData("answeredQuestionsList")) {
      _answeredQuestionsList = GetStorage().read("answeredQuestionsList");
    }
    if(GetStorage().hasData("totalScore")) {
      _totalScore = GetStorage().read("totalScore");
    }

    //every time answeredQuestionsList changes, this will be called.
    ever(_answeredQuestionsList, (_) {
      GetStorage().write('answeredQuestionsList', _answeredQuestionsList);
      print("written to storage");
    });

    ever(_totalScore, (_){
      GetStorage().write('totalScore', _totalScore.toInt());
    });

    super.onInit();
  }

  void beginQuiz() {
    try {
      _animationController =
          AnimationController(duration: Duration(seconds: 60), vsync: this);
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
    Future.delayed(Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value < _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController.forward().whenComplete(nextQuestion);
    }
    //if the user has somehow answered the last question
    else {
      Get.to(() => ScoreScreen());
    }
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
  }

  void markQuestionAnswered() {
    
  }
}