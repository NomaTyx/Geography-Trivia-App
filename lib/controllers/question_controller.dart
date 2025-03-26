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

  //generates a list of questions from the file
  final List<Question> _questions = sample_data
        .map(
          (question) => Question(
          id: question["id"],
          question: question['question'],
          options: question['options'],
          answer: question['answer_index'],
          difficulty: question['difficulty'],
          category: question['category']),
    )
        .toList();
  List<Question> get questionList => _questions;

  final List<String> _categories = ["Capitals", "Geography", "Monuments/Landmarks", "History", "Culture"];
  List<String> get categoryList => _categories;

  final List<String> _difficulties = ["Easy", "Medium", "Hard"];
  List<String> get difficultyList => _difficulties;

  // ignore: prefer_final_fields
  late RxList<int> _answeredQuestionsIDList = <int>[].obs;
  List<int> get answeredQuestions => _answeredQuestionsIDList;

  bool _isAnswered = false;
  bool get hasAnsweredCurrentQuestion => _isAnswered;

  late int _selectedDifficulty;
  int get selectedDifficulty => _selectedDifficulty;

  late String _selectedCategory;
  String get selectedCategory => _selectedCategory;

  late int _correctAns;
  int get correctAnswer => _correctAns;

  late int _selectedAns;
  int get selectedAnswer => _selectedAns;

  // rxints are like events, I think???? https://pub.dev/documentation/flutter_super/latest/flutter_super/RxInt-class.html
  final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;

  ///Spot in questionList that the currently displayed question occupies. Useful for question skipping logic
  late int _currentQuestionIndex;
  int get currentQuestionIndex => _currentQuestionIndex;

  // called immediately after the widget is allocated memory
  @override
  void onInit() {

    //is this too expensive on startup?
    _questions.shuffle(Random());

    //probably do some weird thing like making a temporary list and then casting back and forth
    //sets the local variables equal to the stored value if it exists
    if(GetStorage().hasData("answeredQuestionsList")) {
      _answeredQuestionsIDList.value = GetStorage().read("answeredQuestionsList").cast<int>();
    }

    //every time answeredQuestionsList changes, this will be called.
    ever(_answeredQuestionsIDList, (_) {
      GetStorage().write('answeredQuestionsList', _answeredQuestionsIDList);
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
      //this is only here if the animationcontroller doesn't exist.
      //i tried doing an if statement but it uh. Didn't work?
    }

    // start our animation
    // Once 60s is completed go to the next question
    _animationController.reset();
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
  }

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    _animationController?.dispose();
    _pageController?.dispose();
    super.onClose();
  }

  void checkAns(Question question, int selectedIndex) {
    //todo: put point gain animation thing here. goes somewhere on screen idk
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) {
      _numOfCorrectAns++;
      _answeredQuestionsIDList.add(question.id);
    }

    answeredQuestions.add(question.id);

    // It will stop the counter
    _animationController.stop();
    update();

    // Once user select an ans after 3s it will go to the next qn
    Future.delayed(const Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  ///takes the current question and moves it to the end of the list
  void skipQuestion() {
    var temp = questionList.removeAt(_currentQuestionIndex);
    questionList.add(temp);
    nextQuestion();
  }

  void nextQuestion() {
    _isAnswered = false;
    _pageController.nextPage(duration: const Duration(milliseconds: 250), curve: Curves.ease);

    _animationController.reset();

    //if the user has somehow answered the last question
    if(findValidQuestion() == -1) {
      Get.to(() => const ScoreScreen());
    }

    _animationController.forward().whenComplete(nextQuestion);
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  void setDifficulty(int difficultyToSet) {
    _selectedDifficulty = difficultyToSet;
  }

  void setCategory(String categoryToSet) {
    _selectedCategory = categoryToSet;

    resetRoundScore();
  }

  void resetRoundScore() {
    _numOfCorrectAns = 0;
  }

  int findValidQuestion() {
    for (int i = 0; i < questionList.length; i++) {
      var currentQuestion = questionList[i];
      if (currentQuestion.difficulty == selectedDifficulty && currentQuestion.category == selectedCategory) {
        if (!answeredQuestions.contains(currentQuestion.id)) {
          _currentQuestionIndex = i;
          return i;
        }
      }
    }
    return -1;
  }

  void clearStorage() {
    _answeredQuestionsIDList.clear();
  }
}